import 'package:lavagna_tattica/core/supabase_client.dart';
import 'package:lavagna_tattica/features/tactical_board/data/models/board_state.dart';

class SchemeRepository {
  Future<List<Map<String, dynamic>>> getUserSchemes(String userId) async {
    final response = await supabase
        .from('tactical_schemes')
        .select()
        .eq('user_id', userId)
        .order('created_at', ascending: false);
    return List<Map<String, dynamic>>.from(response);
  }

  Future<void> saveScheme(String userId, String name, BoardState state) async {
    await supabase.from('tactical_schemes').insert({
      'user_id': userId,
      'name': name,
      'data': state.toJson(),
    });
  }

  Future<void> deleteScheme(String schemeId) async {
    await supabase.from('tactical_schemes').delete().eq('id', schemeId);
  }
}
