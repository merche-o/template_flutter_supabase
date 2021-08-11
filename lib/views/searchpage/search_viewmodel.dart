import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class SearchViewModel extends BaseViewModel {
  String _title = 'Search View';
  String get title => _title;
}
