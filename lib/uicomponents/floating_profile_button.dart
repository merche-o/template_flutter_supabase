import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.router.dart';

import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/uicomponents/floating_profile_buttonmodel.dart';

class FloatingProfileButton extends StatelessWidget {
  final _navService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FloatingProfileButtonModel>.reactive(
        builder: (context, model, child) => FloatingActionButton(
            onPressed: () {},
            child: CircleAvatar(
              radius: 25,
              backgroundImage: model.image,
            )),
        viewModelBuilder: () => FloatingProfileButtonModel());
  }
}
