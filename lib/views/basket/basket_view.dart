import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/basket/basket_viewmodel.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasketViewModel>.reactive(
      builder: (context, model, child) => Center(
        child: Text(model.title),
      ),
      viewModelBuilder: () => BasketViewModel(),
    );
  }
}
