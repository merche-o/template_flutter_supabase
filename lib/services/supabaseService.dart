import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
//import 'package:supagrocery/app/app.locator.dart';

///should use router locater in order to not multiply declaration of AuthenticationService

abstract class SupabaseService<T> {
  final _authService = locator<AuthenticationService>();
  final _logger = Logger();

  String tableName() {
    return "";
  }

  Future<PostgrestResponse> all() async {
    _logger.i(tableName());
    final response = await supabase.from(tableName()).select().execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> filtered({filter: String}) async {
    _logger.i(tableName());
    final response = await supabase
        .from(tableName())
        .select()
        .textSearch("title", filter)
        .execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> find(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response = await supabase
        .from(tableName())
        .select()
        .eq('id', id)
        .single()
        .execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> create(Map<String, dynamic> json) async {
    _logger.i(tableName() + ' ' + json.toString());
    final response = await supabase.from(tableName()).insert(json).execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> update({
    required String id,
    required Map<String, dynamic> json,
  }) async {
    _logger.i(tableName() + ' ' + json.toString());
    final response =
        await supabase.from(tableName()).update(json).eq('id', id).execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> delete(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response =
        await supabase.from(tableName()).delete().eq('id', id).execute();
    _logger.i(response.toJson());
    return response;
  }
}
