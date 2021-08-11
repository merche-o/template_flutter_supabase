import 'package:flutter/material.dart';
import 'package:template_flutter_supabase/views/viewutils/bottom_bar_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context, model, child) => BottomAppBar(
                child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      model.moveToSearch();
                    }),
                IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      model.moveToHome();
                    }),
                IconButton(
                    icon: Icon(Icons.account_circle_outlined),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.shopping_basket_outlined),
                    onPressed: () {}),
              ],
            )),
        viewModelBuilder: () => BottomBarViewModel());
  }
}
