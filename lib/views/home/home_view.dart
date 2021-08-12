import 'dart:js';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar.dart';
import 'package:template_flutter_supabase/uicomponents/floating_profile_button.dart';
import 'package:template_flutter_supabase/uicomponents/side_drawer.dart';
import 'package:template_flutter_supabase/views/home/home_viewmodel.dart';
import 'package:template_flutter_supabase/views/searchpage/search_view.dart';

class HomeView extends StatelessWidget {
  final List<Widget> _body = [SearchView(), SearchView()];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: SideDrawer(),
        body: Center(
          child: _body[model.bodyIndex],
        ),
        floatingActionButton: FloatingProfileButton(),
        bottomNavigationBar: BottomBar(),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
