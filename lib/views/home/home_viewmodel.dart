import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/authenticationService.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;
  int _bodyIndex = 2;
  final _logger = Logger();

  int get bodyIndex => _bodyIndex;

  void changeBody(int index) {
    _logger.i(_bodyIndex);

    if (index == 0) {
      Scaffold.of(context).openDrawer();
    } else {
      _bodyIndex = index;
      notifyListeners();
    }
  }
}
