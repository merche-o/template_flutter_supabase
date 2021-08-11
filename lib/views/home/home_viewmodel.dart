import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;
  int _counter = 0;
  int get counter => _counter;
  final _authService = locator<AuthenticationService>();
  final _navService = locator<NavigationService>();

  void logout() {
    _authService.signOut();
    _navService.clearStackAndShow(Routes.startupView);
  }
}
