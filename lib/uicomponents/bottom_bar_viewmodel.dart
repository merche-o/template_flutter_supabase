import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class BottomBarViewModel extends BaseViewModel {
  var _logger = Logger();
  final _authService = locator<AuthenticationService>();
  final _navService = locator<NavigationService>();

  void logout() {
    _authService.signOut();
    _navService.clearStackAndShow(Routes.startupView);
  }

  void moveToHome() {
    if (_navService.currentRoute != Routes.homeView &&
        _navService.currentRoute != "/() => Widget") {
      _navService.clearStackAndShow(Routes.homeView);
    }
  }

  void moveToSearch() {
    if (_navService.currentRoute != Routes.searchView) {
      _navService.clearStackAndShow(Routes.searchView);
    }
  }
}
