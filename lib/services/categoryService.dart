import 'package:template_flutter_supabase/services/supabaseService.dart';

class CategoryService extends SupabaseService {
  String currentCategory = "";
  @override
  String tableName() {
    return "categories";
  }
}
