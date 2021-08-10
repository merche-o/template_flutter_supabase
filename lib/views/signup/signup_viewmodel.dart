import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/model/user/user.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'signup_view.form.dart';

class SignupViewModel extends FormViewModel {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _snackbarService = locator<SnackbarService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signUp() async {
    try {
      setBusy(true);
      _logger.i(formValueMap);

      final user = await _authService.signUp(
        payload: AuthDto(
            email: emailValue ?? '',
            password: passwordValue ?? '',
            first_name: firstNameValue ?? '',
            last_name: lastNameValue),
      );
      _logger.i("emailValue = " + passwordValue!);

      _logger.i("passwordValue = " + passwordValue!);

      if (user == null) {
        setError('Fill in all required fields.');
        _snackbarService.showSnackbar(
          title: 'Error',
          message: modelError,
        );

        return;
      }

      await _navigationService.replaceWith(Routes.homeView);
      _snackbarService.showSnackbar(message: 'You have created an account');
    } catch (e) {
      _logger.e(e);
      _snackbarService.showSnackbar(
        title: 'Error',
        message: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  void toSignInView() {
    _navigationService.replaceWith(Routes.loginView);
  }
}
