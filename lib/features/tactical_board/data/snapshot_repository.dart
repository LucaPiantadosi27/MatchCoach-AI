import 'dart:convert';
import 'dart:typed_data';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/saved_snapshot.dart';

class SnapshotRepository {
  final _supabase = Supabase.instance.client;

  Future<String> saveSnapshot({
    required String userId,
    required String name,
    required Uint8List imageBytes,
  }) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final imageBase64 = base64Encode(imageBytes);

    await _supabase.from('snapshots').insert({
      'id': id,
      'user_id': userId,
      'name': name,
      'image_base64': imageBase64,
      'created_at': DateTime.now().toIso8601String(),
    });

    return id;
  }

  Future<List<SavedSnapshot>> getUserSnapshots(String userId) async {
    final response = await _supabase
        .from('snapshots')
        .select()
        .eq('user_id', userId)
        .order('created_at', ascending: false);

    return (response as List)
        .map((json) => SavedSnapshot.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<void> deleteSnapshot(String snapshotId) async {
    await _supabase.from('snapshots').delete().eq('id', snapshotId);
  }
}
