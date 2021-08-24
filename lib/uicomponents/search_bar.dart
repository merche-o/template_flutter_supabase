import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/uicomponents/search_barmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/product_list/product_details_view.dart';

Widget buildFloatingSearchBar() {
  final isPortrait =
      true; //MediaQuery.of(context).orientation == Orientation.portrait;

  return ViewModelBuilder<SearchBarModel>.reactive(
      builder: (context, model, child) => FloatingSearchBar(
            hint: 'Search...',
            scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
            transitionDuration: const Duration(milliseconds: 800),
            transitionCurve: Curves.easeInOut,
            physics: const BouncingScrollPhysics(),
            axisAlignment: isPortrait ? 0.0 : -1.0,
            openAxisAlignment: 0.0,
            automaticallyImplyDrawerHamburger: false,
            automaticallyImplyBackButton: false,
            debounceDelay: const Duration(milliseconds: 500),
            onQueryChanged: (query) {
              // Call your model, bloc, controller here.
              model.onSearchOnList(filter: query);
            },
            // Specify a custom transition to be used for
            // animating between opened and closed stated.
            transition: CircularFloatingSearchBarTransition(),
            actions: [
              FloatingSearchBarAction.searchToClear(
                showIfClosed: true,
              ),
            ],
            builder: (context, transition) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Material(
                  color: Colors.white,
                  elevation: .0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: model.products!.asMap().entries.map((product) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScreen(product.value!),
                                ));
                          },
                          child: Container(
                              height: 112,
                              color: Colors.accents[product.key],
                              alignment: Alignment.center,
                              child: Text(
                                product.value!.title!,
                                style: TextStyle(color: Colors.white),
                              )));
                    }).toList(),
                  ),
                ),
              );
            },
          ),
      viewModelBuilder: () => SearchBarModel());
}
