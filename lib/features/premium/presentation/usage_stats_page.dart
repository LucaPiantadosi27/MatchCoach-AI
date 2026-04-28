import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lavagna_tattica/core/theme.dart';
import 'package:lavagna_tattica/core/supabase_client.dart';
import 'package:lavagna_tattica/features/video_analysis/data/repositories/video_analysis_repository.dart';

class UsageStatsPage extends ConsumerWidget {
  const UsageStatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.watch(videoAnalysisRepositoryProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        title: const Text('Statistiche Utilizzo AI (Admin)', 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        // Nota: questa query dovrebbe ideally essere filtrata o aggregata lato server
        // ma per ora carichiamo tutto per il coach/admin
        future: supabase.from('video_analyses').select('*').order('created_at', ascending: false),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.cyanAccent));
          }
          if (snapshot.hasError) {
            return Center(child: Text('Errore: ${snapshot.error}', style: const TextStyle(color: Colors.redAccent)));
          }

          final data = snapshot.data ?? [];
          int totalPrompt = 0;
          int totalCompletion = 0;
          int totalAll = 0;

          for (var item in data) {
            totalPrompt += (item['prompt_tokens'] as int? ?? 0);
            totalCompletion += (item['completion_tokens'] as int? ?? 0);
            totalAll += (item['total_tokens'] as int? ?? 0);
          }

          final totalCost = (totalAll / 1000000) * 0.15;

          return CustomScrollView(
            slivers: [
              // Summary Cards
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildSummaryCard(
                        'Costo Totale Stimato',
                        '€${totalCost.toStringAsFixed(3)}',
                        Icons.payments_outlined,
                        Colors.cyanAccent,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _buildSummaryCard(
                              'Tokens Totali',
                              formatNumber(totalAll),
                              Icons.bolt,
                              Colors.amber,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildSummaryCard(
                              'Nr. Analisi',
                              data.length.toString(),
                              Icons.analytics,
                              Colors.purpleAccent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'DETTAGLIO ANALISI',
                    style: TextStyle(
                      color: Colors.white60, 
                      fontSize: 12, 
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2
                    ),
                  ),
                ),
              ),

              // Detailed List
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final item = data[index];
                    final date = DateTime.parse(item['created_at']);
                    final tok = item['total_tokens'] as int? ?? 0;
                    final cost = (tok / 1000000) * 0.15;

                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white10,
                          child: Text('${index + 1}', style: const TextStyle(color: Colors.white70, fontSize: 12)),
                        ),
                        title: Text(item['video_name'] ?? 'N/A', 
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        subtitle: Text(DateFormat('dd/MM HH:mm').format(date), 
                          style: const TextStyle(color: Colors.white54)),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('€${cost.toStringAsFixed(3)}', 
                              style: const TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
                            Text('${formatNumber(tok)} tok', 
                              style: const TextStyle(color: Colors.white38, fontSize: 10)),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: data.length,
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(bottom: 40)),
            ],
          );
        },
      ),
    );
  }

  String formatNumber(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}k';
    return n.toString();
  }

  Widget _buildSummaryCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.15), color.withOpacity(0.05)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.white60, fontSize: 13)),
              const SizedBox(height: 4),
              Text(value, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
            ],
          ),
        ],
      ),
    );
  }
}
