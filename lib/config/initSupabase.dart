import 'package:supabase_flutter/supabase_flutter.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://utvhadspnhajyhdzbymo.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyODY3MzQ1NSwiZXhwIjoxOTQ0MjQ5NDU1fQ.FeJokEzEsBvBv8d0xVxC4ic5QGz5qtZLkkYQo3TtHdI';

void setupSupabase() {
  Supabase.initialize(url: SUPABASE_URL, anonKey: SUPABASE_SECRET);
}

final supabase = Supabase.instance.client;
