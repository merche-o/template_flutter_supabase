import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/views/home/home_view.dart';
import 'package:template_flutter_supabase/views/login/login_view.dart';

class StartupViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    await Future.delayed(Duration(seconds: 1));

    await _authService.initialize();

    if (_authService.hasUser) {
      return await _navigationService.replaceWithTransition(
        HomeView(),
        transition: 'upToDown',
      );
    }

    return await _navigationService.replaceWithTransition(
      LoginView(),
      transition: 'upToDown',
    );
  }
}
