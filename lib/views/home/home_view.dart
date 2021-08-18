import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar.dart';
import 'package:template_flutter_supabase/uicomponents/floating_profile_button.dart';
import 'package:template_flutter_supabase/uicomponents/search_bar.dart';
import 'package:template_flutter_supabase/uicomponents/side_drawer.dart';
import 'package:template_flutter_supabase/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        drawer: SideDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [model.body[model.bodyIndex], buildFloatingSearchBar()],
        ),
        floatingActionButton: FloatingProfileButton(),
        bottomNavigationBar: BottomBar(model.changeBody, model.bodyIndex),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
