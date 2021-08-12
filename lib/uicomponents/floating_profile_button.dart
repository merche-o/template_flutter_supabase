import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.router.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';

import 'bottom_bar_viewmodel.dart';

class FloatingProfileButton extends StatelessWidget {
  final _navService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context, model, child) => FloatingActionButton(
              onPressed: () {},
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/noavatar.jpeg')),
            ),
        viewModelBuilder: () => BottomBarViewModel());
  }
}
