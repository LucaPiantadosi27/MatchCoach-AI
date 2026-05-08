import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/season_model.dart';
import '../data/models/calendar_entry_model.dart';
import '../data/models/match_model.dart';
import '../data/models/match_video_model.dart';
import '../data/repositories/matches_repository.dart';

// ── Selected season ───────────────────────────────────────────────
final selectedSeasonProvider = StateProvider<String?>((ref) => null);

// ── Seasons ───────────────────────────────────────────────────────
final seasonsProvider = FutureProvider.autoDispose<List<SeasonModel>>((ref) async {
  return ref.read(matchesRepositoryProvider).getSeasons();
});

// ── Calendar entries ──────────────────────────────────────────────
final calendarProvider = FutureProvider.autoDispose<List<CalendarEntryModel>>((ref) async {
  final seasonId = ref.watch(selectedSeasonProvider);
  return ref.read(matchesRepositoryProvider).getCalendarEntries(seasonId: seasonId);
});

// ── Matches ───────────────────────────────────────────────────────
final matchesProvider = FutureProvider.autoDispose<List<MatchModel>>((ref) async {
  final seasonId = ref.watch(selectedSeasonProvider);
  return ref.read(matchesRepositoryProvider).getMatches(seasonId: seasonId);
});

// ── Match videos ──────────────────────────────────────────────────
final matchVideosProvider = FutureProvider.autoDispose.family<List<MatchVideoModel>, String>((ref, matchId) async {
  return ref.read(matchesRepositoryProvider).getMatchVideos(matchId);
});
