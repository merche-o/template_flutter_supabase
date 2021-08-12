import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/uicomponents/bottom_bar.dart';
import 'package:template_flutter_supabase/uicomponents/floating_profile_button.dart';
import 'package:template_flutter_supabase/uicomponents/side_drawer.dart';
import 'package:template_flutter_supabase/views/searchpage/search_viewmodel.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        drawer: SideDrawer(),
        body: Center(
          child: Text(model.title),
        ),
        bottomNavigationBar: BottomBar(),
        floatingActionButton: FloatingProfileButton(),
      ),
      viewModelBuilder: () => SearchViewModel(),
    );
  }
}
