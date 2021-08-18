import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/basket/basket_view.dart';
import 'package:template_flutter_supabase/views/product_list/produclt_list_view.dart';
import 'package:template_flutter_supabase/views/searchpage/search_view.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => _title;
  int _bodyIndex = 1;
  final _logger = Logger();

  int get bodyIndex => _bodyIndex;
  final List<Widget> body = [
    SearchView(),
    ProductListView(),
    BasketView(),
  ];

  void changeBody(int index) {
    _logger.i(_bodyIndex);

    _bodyIndex = index;
    notifyListeners();
  }
}
