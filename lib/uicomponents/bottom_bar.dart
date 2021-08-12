import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomBar extends StatelessWidget {
  final _navService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context, model, child) => BottomAppBar(
                child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu,
                        color: _navService.currentRoute == ""
                            ? Colors.blue
                            : Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
                IconButton(
                    icon: Icon(Icons.search,
                        color: _navService.currentRoute == Routes.searchView
                            ? Colors.blue
                            : Colors.black),
                    onPressed: () {
                      model.moveToSearch();
                    }),
                IconButton(
                    icon: Icon(Icons.home),
                    color: ((_navService.currentRoute == Routes.homeView) ||
                            (_navService.currentRoute == "/() => Widget"))
                        ? Colors.blue
                        : Colors.black,
                    onPressed: () {
                      model.moveToHome();
                    }),
                IconButton(
                    icon: Icon(Icons.shopping_basket_outlined),
                    onPressed: () {}),
              ],
            )),
        viewModelBuilder: () => BottomBarViewModel());
  }
}
