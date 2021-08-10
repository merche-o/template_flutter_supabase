import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/services/localStorageService.dart';
import 'package:template_flutter_supabase/services/supabaseService.dart';
import 'package:template_flutter_supabase/views/home/home_view.dart';
import 'package:template_flutter_supabase/views/login/login_view.dart';
import 'package:template_flutter_supabase/views/signup/signup_view.dart';
import 'package:template_flutter_supabase/views/startup/startup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: SignupView)
  // CupertinoRoute(page: BottomNavExample),
  // CustomRouter(page: StreamCounterView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: AuthenticationService),
  LazySingleton(classType: LocalStorageService),
])
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
