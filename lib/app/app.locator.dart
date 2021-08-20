// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/authenticationService.dart';
import '../services/categoryService.dart';
import '../services/localStorageService.dart';
import '../services/productService.dart';
import '../services/userService.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => LocalStorageService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => ProductService());
  locator.registerLazySingleton(() => CategoryService());
}
