import 'package:flutter/material.dart';

class MarkdownMessageWidget extends StatelessWidget {
  final String text;
  final bool isUser;

  const MarkdownMessageWidget({
    super.key,
    required this.text,
    this.isUser = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isUser) {
      return Text(text, style: const TextStyle(fontSize: 14));
    }

    final lines = text.split('\n');
    final List<Widget> widgets = [];

    for (var line in lines) {
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 8));
        continue;
      }

      // Titoli con icone
      if (line.startsWith('###')) {
        widgets.add(_buildHeader(
          line.replaceFirst('###', '').trim(),
          Icons.chevron_right_rounded,
          16,
          FontWeight.w600,
        ));
      } else if (line.startsWith('##')) {
        widgets.add(_buildHeader(
          line.replaceFirst('##', '').trim(),
          Icons.star_rounded,
          18,
          FontWeight.bold,
        ));
      } else if (line.startsWith('#')) {
        widgets.add(_buildHeader(
          line.replaceFirst('#', '').trim(),
          Icons.emoji_events_rounded,
          20,
          FontWeight.bold,
        ));
      }
      // Liste puntate
      else if (line.trim().startsWith('-') || line.trim().startsWith('*')) {
        widgets.add(_buildBulletPoint(line.replaceFirst(RegExp(r'^[\s\-\*]+'), '').trim()));
      }
      // Testo in grassetto **testo**
      else if (line.contains('**')) {
        widgets.add(_buildRichText(line));
      }
      // Testo normale
      else {
        widgets.add(Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            line,
            style: const TextStyle(fontSize: 14, height: 1.4),
          ),
        ));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  Widget _buildHeader(String text, IconData icon, double fontSize, FontWeight weight) {
    // Mappa icone specifiche per contenuti comuni
    IconData selectedIcon = icon;
    Color iconColor = Colors.greenAccent;

    if (text.toLowerCase().contains('difesa') || text.toLowerCase().contains('difensiv')) {
      selectedIcon = Icons.shield_rounded;
      iconColor = Colors.blueAccent;
    } else if (text.toLowerCase().contains('attacco') || text.toLowerCase().contains('offensiv')) {
      selectedIcon = Icons.sports_soccer_rounded;
      iconColor = Colors.orangeAccent;
    } else if (text.toLowerCase().contains('tiri') || text.toLowerCase().contains('goal')) {
      selectedIcon = Icons.gps_fixed_rounded;
      iconColor = Colors.redAccent;
    } else if (text.toLowerCase().contains('passaggi') || text.toLowerCase().contains('possesso')) {
      selectedIcon = Icons.swap_horiz_rounded;
      iconColor = Colors.cyanAccent;
    } else if (text.toLowerCase().contains('tattica') || text.toLowerCase().contains('schema')) {
      selectedIcon = Icons.grid_on_rounded;
      iconColor = Colors.purpleAccent;
    } else if (text.toLowerCase().contains('giocatore') || text.toLowerCase().contains('mvp')) {
      selectedIcon = Icons.person_rounded;
      iconColor = Colors.amberAccent;
    } else if (text.toLowerCase().contains('consiglio') || text.toLowerCase().contains('suggerimento')) {
      selectedIcon = Icons.lightbulb_rounded;
      iconColor = Colors.yellowAccent;
    } else if (text.toLowerCase().contains('punti') && text.toLowerCase().contains('deboli')) {
      selectedIcon = Icons.warning_rounded;
      iconColor = Colors.orangeAccent;
    } else if (text.toLowerCase().contains('punti') && text.toLowerCase().contains('forza')) {
      selectedIcon = Icons.thumb_up_rounded;
      iconColor = Colors.greenAccent;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(selectedIcon, size: fontSize + 2, color: iconColor),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: weight,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Icon(Icons.fiber_manual_record, size: 6, color: Colors.greenAccent),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRichText(String line) {
    final parts = <TextSpan>[];
    final regex = RegExp(r'\*\*(.*?)\*\*');
    int lastIndex = 0;

    for (final match in regex.allMatches(line)) {
      if (match.start > lastIndex) {
        parts.add(TextSpan(text: line.substring(lastIndex, match.start)));
      }
      parts.add(TextSpan(
        text: match.group(1),
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.greenAccent),
      ));
      lastIndex = match.end;
    }

    if (lastIndex < line.length) {
      parts.add(TextSpan(text: line.substring(lastIndex)));
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 14, height: 1.4, color: Colors.white),
          children: parts,
        ),
      ),
    );
  }
}
