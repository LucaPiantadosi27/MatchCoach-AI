import 'package:supabase_flutter/supabase_flutter.dart';

/// Global accessor for the Supabase client instance.
SupabaseClient get supabase => Supabase.instance.client;
