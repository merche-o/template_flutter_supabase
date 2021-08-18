import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/home/home_view.dart';
import 'package:template_flutter_supabase/views/home/home_viewmodel.dart';

class BottomBar extends StatelessWidget {
  final _navService = locator<NavigationService>();
  int _index = 2;
  final _logger = Logger();

  Function(int)? _onTap;

  BottomBar(Function(int) onTap, int index) {
    _onTap = onTap;
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context, model, child) => BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu, color: Colors.black), label: ""
                    /*  onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }*/
                    ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                      color: _index == 1 ? Colors.blue : Colors.black),
                  label: "",
                  /*,
                    onPressed: () {
                      model.moveToSearch();
                    }*/
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,
                        color: _index == 2 ? Colors.blue : Colors.black),
                    label: ""

                    /* onPressed: () {
                      model.moveToHome();
                    }*/
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket_outlined), label: ""),
              ],
              onTap: _onTap,
              selectedItemColor: Colors.blue,
            ),
        viewModelBuilder: () => BottomBarViewModel());
  }
}
