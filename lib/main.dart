import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/config/initSupabase.dart';
import 'app/app.router.dart';

void main() {
  setupSupabase();
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // If you've added the stacked_services package then set the navigatorKey, otherwise set
      // your own navigator key
      navigatorKey: StackedService.navigatorKey,

      navigatorObservers: [StackedService.routeObserver],

      ///<- Here

      // Construct the StackedRouter and set the onGenerateRoute function
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    );
  }
}
