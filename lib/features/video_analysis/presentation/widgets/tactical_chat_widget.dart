import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/features/video_analysis/data/models/chat_message.dart';
import 'package:lavagna_tattica/features/video_analysis/data/models/scout_statistics.dart';
import 'package:lavagna_tattica/features/video_analysis/data/repositories/tactical_chat_repository.dart';

class TacticalChatWidget extends ConsumerStatefulWidget {
  final ScoutStatistics analysis;
  final String? analysisId;

  const TacticalChatWidget({
    super.key,
    required this.analysis,
    this.analysisId,
  });

  @override
  ConsumerState<TacticalChatWidget> createState() => _TacticalChatWidgetState();
}

class _TacticalChatWidgetState extends ConsumerState<TacticalChatWidget> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  final List<ChatMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    _initializeChat();
  }

  Future<void> _initializeChat() async {
    // Inizializza il repository con il contesto dell'analisi
    final repo = ref.read(tacticalChatRepositoryProvider);
    repo.setContext(widget.analysis, analysisId: widget.analysisId);

    if (widget.analysisId != null) {
      setState(() => _isLoading = true);
      await repo.loadPersistentHistory(widget.analysisId!);
      if (mounted) {
        setState(() {
          _messages.clear();
          _messages.addAll(repo.history);
          _isLoading = false;
        });
        _scrollToBottom();
      }
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 300), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _isLoading) return;

    _controller.clear();
    setState(() {
      _messages.add(ChatMessage(role: ChatRole.user, text: text));
      _isLoading = true;
    });
    _scrollToBottom();

    try {
      final response = await ref.read(tacticalChatRepositoryProvider).sendMessage(text);
      if (mounted) {
        setState(() {
          _messages.add(ChatMessage(role: ChatRole.model, text: response));
          _isLoading = false;
        });
        _scrollToBottom();
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Errore AI: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.psychology_outlined, color: Colors.greenAccent),
                const SizedBox(width: 12),
                const Text(
                  'Coach Assistant AI',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  'Analisi Live attiva',
                  style: TextStyle(fontSize: 12, color: Colors.greenAccent.withValues(alpha: 0.7)),
                ),
              ],
            ),
          ),
          const Divider(height: 1),

          // Messages List
          Container(
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _messages.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble_outline, size: 48, color: Colors.grey[600]),
                        const SizedBox(height: 16),
                        Text(
                          'Chiedimi qualcosa sulla partita...\nEs: "Quali sono stati i punti deboli della difesa?"',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: _messages.length,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (context, index) {
                      final msg = _messages[index];
                      final isUser = msg.role == ChatRole.user;

                      return Align(
                        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                          decoration: BoxDecoration(
                            color: isUser 
                              ? Colors.green.withValues(alpha: 0.8) 
                              : Colors.white.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(16),
                              topRight: const Radius.circular(16),
                              bottomLeft: Radius.circular(isUser ? 16 : 0),
                              bottomRight: Radius.circular(isUser ? 0 : 16),
                            ),
                          ),
                          child: Text(
                            msg.text,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      );
                    },
                  ),
          ),

          if (_isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: LinearProgressIndicator(minHeight: 2, backgroundColor: Colors.transparent, color: Colors.greenAccent),
            ),

          const Divider(height: 1),

          // Input Area
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendMessage(),
                    decoration: InputDecoration(
                      hintText: 'Fai una domanda tattica...',
                      hintStyle: const TextStyle(fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      filled: true,
                      fillColor: Colors.black.withValues(alpha: 0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filled(
                  onPressed: _isLoading ? null : _sendMessage,
                  icon: const Icon(Icons.send_rounded),
                  style: IconButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
