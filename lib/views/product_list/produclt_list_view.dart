import 'dart:html';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';
import 'package:template_flutter_supabase/views/product_list/category_header_view.dart';
import 'package:template_flutter_supabase/views/product_list/product_card_view.dart';
import 'package:template_flutter_supabase/views/product_list/product_details_view.dart';
import 'package:template_flutter_supabase/views/product_list/product_list_viewmodel.dart';

class ProductListView extends StatelessWidget {
  final _logger = Logger();
  final _navService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductListViewModel>.reactive(
      builder: (context, model, child) =>
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HeaderTitle(),
        Categories(model.onRefreshList),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: model.products?.length ?? 0,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                    product: model.products?[index] as Product,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsScreen(model.products![index]!),
                          ));
                    }),
              )),
        ),
      ]),
      viewModelBuilder: () => ProductListViewModel(),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin, vertical: kDefaultPaddin + .0),
      child: Text(
        "Items",
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
