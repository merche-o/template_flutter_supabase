import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/product_list/product_list_viewmodel.dart';

class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductListViewModel>.reactive(
      builder: (context, model, child) => Center(
        child: Text(model.title),
      ),
      viewModelBuilder: () => ProductListViewModel(),
    );
  }
}
