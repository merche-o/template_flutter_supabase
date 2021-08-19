import 'package:template_flutter_supabase/services/supabaseService.dart';

class ProductService extends SupabaseService {
  @override
  String tableName() {
    return "products";
  }
}
