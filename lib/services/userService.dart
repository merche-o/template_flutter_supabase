import 'package:template_flutter_supabase/services/supabaseService.dart';

class UserService extends SupabaseService {
  @override
  String tableName() {
    return "users";
  }
}
