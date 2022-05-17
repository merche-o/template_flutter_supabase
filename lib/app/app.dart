import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';
import 'package:template_flutter_supabase/services/basketService.dart';
import 'package:template_flutter_supabase/services/categoryService.dart';
import 'package:template_flutter_supabase/services/localStorageService.dart';
import 'package:template_flutter_supabase/services/productService.dart';
import 'package:template_flutter_supabase/services/userService.dart';
import 'package:template_flutter_supabase/views/basket/basket_view.dart';
import 'package:template_flutter_supabase/views/home/home_view.dart';
import 'package:template_flutter_supabase/views/login/login_view.dart';
import 'package:template_flutter_supabase/views/onboarding/onboarding_view.dart';
import 'package:template_flutter_supabase/views/product_list/product_details_view.dart';
import 'package:template_flutter_supabase/views/profile/profile_view.dart';
import 'package:template_flutter_supabase/views/searchpage/search_view.dart';
import 'package:template_flutter_supabase/views/signup/signup_view.dart';
import 'package:template_flutter_supabase/views/startup/startup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: OnBoardingView),
  MaterialRoute(page: SignupView),
  MaterialRoute(page: SearchView),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: DetailsScreen),
  MaterialRoute(page: BasketView),

  // CupertinoRoute(page: BottomNavExample),
  // CustomRouter(page: StreamCounterView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: AuthenticationService),
  LazySingleton(classType: LocalStorageService),
  LazySingleton(classType: UserService),
  LazySingleton(classType: ProductService),
  LazySingleton(classType: CategoryService),
  LazySingleton(classType: BasketService)
])
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
