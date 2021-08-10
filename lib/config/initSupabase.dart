import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_addons/supabase_addons.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://borayzhhitkyveigfijz.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYxOTMwODI5MCwiZXhwIjoxOTM0ODg0MjkwfQ.Kk1ckyjzCB98aWyBPtJsoWuTsbq2wyYfiUxG7fH4yAg';

void setupSupabase() {
  Supabase.initialize(
    url: SUPABASE_URL,
    anonKey: SUPABASE_SECRET,
    authCallbackUrlHostname: 'login-callback',
  );
}

final supabase = Supabase.instance.client;
