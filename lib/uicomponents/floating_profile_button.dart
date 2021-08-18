import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/uicomponents/floating_profile_buttonmodel.dart';

class FloatingProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FloatingProfileButtonModel>.reactive(
        builder: (context, model, child) => FloatingActionButton(
            onPressed: () {
              model.moveToProfile();
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: model.image,
            )),
        viewModelBuilder: () => FloatingProfileButtonModel());
  }
}
