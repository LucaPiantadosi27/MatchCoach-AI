# MatchCoach-AI — Piano di Sviluppo

## Step 1 — Fix /usage [✅ DONE]
- [x] Allineare stile ad AppTheme
- [x] Filtrare query per user_id (admin vede tutto)
- [x] Calcolo costo per modello
- [x] Gestire video_name null
- [x] FutureProvider.autoDispose con refresh

## Step 2 — Schema DB Supabase [✅ DONE]
- [x] Tabelle: seasons, matches, match_videos, calendar_entries
- [x] RLS policies
- [x] Script SQL: supabase/migrations/001_matches_calendar.sql
- [x] Models Dart: SeasonModel, MatchModel, MatchVideoModel, CalendarEntryModel
- [x] MatchesRepository con CRUD completo

## Step 3 — Calendario [✅ DONE]
- [x] CalendarPage con stagione dropdown, import CSV, form manuale
- [x] Tab "Calendario" in /video
- [x] Lista giornate con stato (analizzata / da analizzare)

## Step 4 — Gestione Partite [✅ DONE]
- [x] Tab "Partite" in /video con lista
- [x] Dialog crea partita da zero
- [x] Pagina dettaglio partita con lista clip (match_detail_page.dart)
- [x] Upload clip via FileUploadInputElement + sequence_order
- [x] Drag-to-reorder clip (ReorderableListView)
- [x] Route /matches/:id nel router

## Step 5+6 — Colori Maglie + Analisi Clip [✅ DONE]
- [x] Dialog "Analizza clip" → chiede colori se non impostati (_TeamColorsDialog con palette 12 colori)
- [x] Colori salvati in matches (team1_color, team2_color) via updateMatchColors
- [x] TeamContext class in ai_analysis_repository.dart
- [x] Prompt AI aggiornato con nomi e colori squadre
- [x] Salva analysis_json + token in match_videos via updateVideoAnalysis
- [x] Warning ri-analisi (token + sovrascrittura)
- [x] Status badge per ogni clip (pending/processing/done/error)

## Step 7 — Chat Aggregata Partita [✅ DONE]
- [x] _buildAggregatedStats → merge di tutti i analysis_json in ordine
- [x] Tab "Chat" in MatchDetailPage con TacticalChatWidget
- [x] analysisId = 'match_{id}' per persistenza history

## Step 8 — Dashboard Multi-Partita [✅ DONE]
- [x] Pagina MatchDashboardPage — tab 4 in /video
- [x] Schede riassuntive (partite, analizzate, clip, xG totali)
- [x] Grafici barre orizzontali: possesso, tiri, xG per partita con colori squadre
- [x] Lista partite con badge clip analizzate/totali e navigazione a dettaglio

---
## Note
- I colori squadre NON si inseriscono alla creazione partita
- Si inseriscono nel dialog al momento dell'analisi del primo clip
- Vengono poi riutilizzati automaticamente per i clip successivi della stessa partita
