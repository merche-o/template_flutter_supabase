import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/views/basket/basket_view.dart';
import 'package:template_flutter_supabase/views/product_list/produclt_list_view.dart';
import 'package:template_flutter_supabase/views/searchpage/search_view.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;
  int _bodyIndex = 1;
  final _navigationService = locator<NavigationService>();

  final _logger = Logger();

  HomeViewModel();

  int get bodyIndex => _bodyIndex;
  final List<Widget> body = [
    SearchView(),
    ProductListView(),
    BasketView(),
  ];

  void changeBody(int index) {
    _logger.i(_bodyIndex);

    if (index == 2) {
      _navigationService.navigateTo(Routes.basketView);
    } else {
      _bodyIndex = index;
    }

    notifyListeners();
  }
}
