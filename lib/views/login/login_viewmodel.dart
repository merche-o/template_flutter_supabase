import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/model/user/user.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'login_view.form.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _snackbarService = locator<SnackbarService>();
  final _logger = Logger();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signIn() async {
    try {
      setBusy(true);
      _logger.i(formValueMap);
      final payload = AuthDto(
        email: emailValue ?? '',
        password: passwordValue ?? '',
      );
      final user = await _authService.signIn(
        payload: payload,
      );

      if (user == null) {
        setError('Incorrect email or password, please try again');
        _snackbarService.showSnackbar(
          title: 'Error',
          message: modelError,
        );

        return;
      }

      _snackbarService.showSnackbar(
        title: 'Info',
        message: 'You have signed in successfully',
      );
      await _navigationService.replaceWith(Routes.homeView);
    } catch (e) {
      _logger.e(e);
      _snackbarService.showSnackbar(title: 'Error', message: e.toString());
    } finally {
      setBusy(false);
    }
  }

  void toSignUpView() {
    //TODO : Create SignUpView
    _navigationService.replaceWith(Routes.signupView);
    //_navigationService.replaceWith(Routes.signUpView);
  }
}
