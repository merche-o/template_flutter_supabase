import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/uicomponents/search_barmodel.dart';
import 'package:stacked/stacked.dart';

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
                  elevation: 0.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: model.products!.map((product) {
                      return Container(
                          height: 112,
                          color: Colors.white,
                          child: Text(product!.title!));
                    }).toList(),
                  ),
                ),
              );
            },
          ),
      viewModelBuilder: () => SearchBarModel());
}
