import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;
  int _bodyIndex = 0;
  int get bodyIndex => _bodyIndex;
  void changeBody(int index) {
    if (index == 0) {}
    _bodyIndex = index;
  }

  notifyListeners();
}
