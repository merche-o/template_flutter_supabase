// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../model/product/product.dart';
import '../views/basket/basket_view.dart';
import '../views/home/home_view.dart';
import '../views/login/login_view.dart';
import '../views/onboarding/onboarding_view.dart';
import '../views/product_list/product_details_view.dart';
import '../views/profile/profile_view.dart';
import '../views/searchpage/search_view.dart';
import '../views/signup/signup_view.dart';
import '../views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String loginView = '/login-view';
  static const String onBoardingView = '/on-boarding-view';
  static const String signupView = '/signup-view';
  static const String searchView = '/search-view';
  static const String profileView = '/profile-view';
  static const String detailsScreen = '/details-screen';
  static const String basketView = '/basket-view';
  static const all = <String>{
    startupView,
    homeView,
    loginView,
    onBoardingView,
    signupView,
    searchView,
    profileView,
    detailsScreen,
    basketView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.searchView, page: SearchView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.detailsScreen, page: DetailsScreen),
    RouteDef(Routes.basketView, page: BasketView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    OnBoardingView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => OnBoardingView(),
        settings: data,
      );
    },
    SignupView: (data) {
      var args = data.getArgs<SignupViewArguments>(
        orElse: () => SignupViewArguments(),
      );
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => SignupView(key: args.key),
        settings: data,
      );
    },
    SearchView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => ProfileView(),
        settings: data,
      );
    },
    DetailsScreen: (data) {
      var args = data.getArgs<DetailsScreenArguments>(nullOk: false);
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => DetailsScreen(args.product),
        settings: data,
      );
    },
    BasketView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => BasketView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// SignupView arguments holder class
class SignupViewArguments {
  final Key? key;
  SignupViewArguments({this.key});
}

/// DetailsScreen arguments holder class
class DetailsScreenArguments {
  final Product product;
  DetailsScreenArguments({required this.product});
}
