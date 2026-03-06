import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:lavagna_tattica/core/supabase_client.dart';
import 'package:lavagna_tattica/features/auth/data/auth_repository.dart';
import 'package:lavagna_tattica/features/auth/data/user_model.dart';

/// Provider for AuthRepository
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

/// StreamProvider that tracks auth state changes
final authStateProvider = StreamProvider<AuthState>((ref) {
  final authRepo = ref.watch(authRepositoryProvider);
  return authRepo.authStateChanges;
});

/// AsyncNotifier that manages the current user's profile data
class UserNotifier extends AsyncNotifier<UserModel?> {
  @override
  Future<UserModel?> build() async {
    final user = supabase.auth.currentUser;
    if (user == null) return null;
    return _fetchUserProfile(user.id);
  }

  Future<UserModel?> _fetchUserProfile(String userId) async {
    try {
      final response = await supabase
          .from('users')
          .select()
          .eq('id', userId)
          .single();
      return UserModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<void> refreshUser() async {
    final user = supabase.auth.currentUser;
    if (user == null) {
      state = const AsyncData(null);
      return;
    }
    state = const AsyncLoading();
    state = AsyncData(await _fetchUserProfile(user.id));
  }

  Future<void> incrementSchemesCount() async {
    final currentUser = state.valueOrNull;
    if (currentUser == null) return;

    try {
      await supabase.rpc('increment_schemes_count', params: {
        'user_id_param': currentUser.id,
      });
      // Update local state
      state = AsyncData(
        currentUser.copyWith(schemesCount: currentUser.schemesCount + 1),
      );
    } catch (e) {
      // Fallback: manual update
      await supabase
          .from('users')
          .update({'schemes_count': currentUser.schemesCount + 1})
          .eq('id', currentUser.id);
      state = AsyncData(
        currentUser.copyWith(schemesCount: currentUser.schemesCount + 1),
      );
    }
  }

  Future<void> decrementSchemesCount() async {
    final currentUser = state.valueOrNull;
    if (currentUser == null) return;

    final newCount = (currentUser.schemesCount - 1).clamp(0, 999);
    await supabase
        .from('users')
        .update({'schemes_count': newCount})
        .eq('id', currentUser.id);
    state = AsyncData(
      currentUser.copyWith(schemesCount: newCount),
    );
  }
}

final userProvider =
    AsyncNotifierProvider<UserNotifier, UserModel?>(() => UserNotifier());
