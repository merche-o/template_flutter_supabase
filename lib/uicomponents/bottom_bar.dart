import 'dart:js';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomBar extends StatelessWidget {
  int _index = 2;
  final _logger = Logger();

  Function(int)? _onTap;

  BottomBar(
    Function(int) onTap,
    int index,
  ) {
    _onTap = onTap;
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context, model, child) => BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.search,
                        color: _index == 0 ? Colors.blue : Colors.black),
                    tooltip: "Search",
                    label: ""
                    /*,
                    onPressed: () {
                      model.moveToSearch();
                    }*/
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,
                        color: _index == 1 ? Colors.blue : Colors.black),
                    tooltip: "Home",

                    /* onPressed: () {
                      model.moveToHome();
                    }*/
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket_outlined,
                        color: _index == 2 ? Colors.blue : Colors.black),
                    tooltip: "Basket",
                    label: ""),
              ],
              onTap: _onTap,
              selectedItemColor: Colors.blue,
            ),
        viewModelBuilder: () => BottomBarViewModel());
  }
}
