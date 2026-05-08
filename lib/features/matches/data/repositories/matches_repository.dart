import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lavagna_tattica/core/supabase_client.dart';
import '../models/season_model.dart';
import '../models/calendar_entry_model.dart';
import '../models/match_model.dart';
import '../models/match_video_model.dart';

final matchesRepositoryProvider = Provider<MatchesRepository>((ref) => MatchesRepository());

class MatchesRepository {
  // ── Seasons ──────────────────────────────────────────────────────
  Future<List<SeasonModel>> getSeasons() async {
    final data = await supabase.from('seasons').select('*').order('created_at', ascending: false);
    return data.map((e) => SeasonModel.fromJson(e)).toList();
  }

  Future<SeasonModel> createSeason(String name) async {
    final userId = supabase.auth.currentUser!.id;
    final data = await supabase.from('seasons').insert({'user_id': userId, 'name': name}).select().single();
    return SeasonModel.fromJson(data);
  }

  Future<void> deleteSeason(String seasonId) async {
    await supabase.from('seasons').delete().eq('id', seasonId);
  }

  // ── Calendar ─────────────────────────────────────────────────────
  Future<List<CalendarEntryModel>> getCalendarEntries({String? seasonId}) async {
    var query = supabase.from('calendar_entries').select('*');
    if (seasonId != null) query = query.eq('season_id', seasonId) as dynamic;
    final data = await (query as dynamic).order('match_day', ascending: true);
    return (data as List).map((e) => CalendarEntryModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<CalendarEntryModel> createCalendarEntry(CalendarEntryModel entry) async {
    final userId = supabase.auth.currentUser!.id;
    final data = await supabase.from('calendar_entries').insert(entry.toInsertJson(userId)).select().single();
    return CalendarEntryModel.fromJson(data);
  }

  Future<void> importCalendarEntries(List<CalendarEntryModel> entries) async {
    final userId = supabase.auth.currentUser!.id;
    final rows = entries.map((e) => e.toInsertJson(userId)).toList();
    await supabase.from('calendar_entries').insert(rows);
  }

  Future<void> linkCalendarEntryToMatch(String entryId, String matchId) async {
    await supabase.from('calendar_entries').update({'match_id': matchId}).eq('id', entryId);
  }

  Future<void> deleteCalendarEntry(String entryId) async {
    await supabase.from('calendar_entries').delete().eq('id', entryId);
  }

  // ── Matches ───────────────────────────────────────────────────────
  Future<List<MatchModel>> getMatches({String? seasonId}) async {
    var query = supabase.from('matches').select('*');
    if (seasonId != null) query = query.eq('season_id', seasonId) as dynamic;
    final data = await (query as dynamic).order('created_at', ascending: false);
    return (data as List).map((e) => MatchModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<MatchModel> createMatch(MatchModel match) async {
    final userId = supabase.auth.currentUser!.id;
    final data = await supabase.from('matches').insert(match.toInsertJson(userId)).select().single();
    return MatchModel.fromJson(data);
  }

  Future<MatchModel> updateMatchColors(String matchId, String team1Color, String team2Color) async {
    final data = await supabase.from('matches').update({
      'team1_color': team1Color,
      'team2_color': team2Color,
    }).eq('id', matchId).select().single();
    return MatchModel.fromJson(data);
  }

  Future<void> deleteMatch(String matchId) async {
    await supabase.from('matches').delete().eq('id', matchId);
  }

  // ── Match Videos ─────────────────────────────────────────────────
  Future<List<MatchVideoModel>> getMatchVideos(String matchId) async {
    final data = await supabase
        .from('match_videos')
        .select('*')
        .eq('match_id', matchId)
        .order('sequence_order', ascending: true);
    return data.map((e) => MatchVideoModel.fromJson(e)).toList();
  }

  Future<MatchVideoModel> createMatchVideo(MatchVideoModel video) async {
    final userId = supabase.auth.currentUser!.id;
    final data = await supabase.from('match_videos').insert(video.toInsertJson(userId)).select().single();
    return MatchVideoModel.fromJson(data);
  }

  Future<MatchVideoModel> updateVideoAnalysis({
    required String videoId,
    required Map<String, dynamic> analysisJson,
    required AnalysisStatus status,
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
    required String modelName,
  }) async {
    final data = await supabase.from('match_videos').update({
      'analysis_json': analysisJson,
      'analysis_status': status.name,
      'prompt_tokens': promptTokens,
      'completion_tokens': completionTokens,
      'total_tokens': totalTokens,
      'model_name': modelName,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', videoId).select().single();
    return MatchVideoModel.fromJson(data);
  }

  Future<void> updateVideoStatus(String videoId, AnalysisStatus status) async {
    await supabase.from('match_videos').update({
      'analysis_status': status.name,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', videoId);
  }

  Future<void> updateVideoOrder(String videoId, int newOrder) async {
    await supabase.from('match_videos').update({'sequence_order': newOrder}).eq('id', videoId);
  }

  Future<void> deleteMatchVideo(String videoId) async {
    await supabase.from('match_videos').delete().eq('id', videoId);
  }
}
