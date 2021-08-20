import 'package:logger/logger.dart';
import 'package:supabase/supabase.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/services/supabaseService.dart';

class ProductService extends SupabaseService {
  final _logger = Logger();
  final _authService = locator<AuthenticationService>();

  @override
  String tableName() {
    return "product_categories";
  }

  @override
  Future<PostgrestResponse> all() async {
    _logger.i(tableName());
    final response = await supabase
        .from(tableName())
        .select("product:product_id(*)")
        .execute();
    _logger.i(response.toJson());
    return response;
  }
}
