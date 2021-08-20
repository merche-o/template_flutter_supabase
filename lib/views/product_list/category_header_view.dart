import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/model/categories/category.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';
import 'package:template_flutter_supabase/views/product_list/category_header_viewmodel.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final _logger = Logger();

  // ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryHeaderViewModel>.reactive(
        builder: (context, model, child) => Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
              child: SizedBox(
                height: 25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: model.data?.length ?? 0,
                  itemBuilder: (context, index) => buildCategory(index, model),
                ),
              ),
            ),
        viewModelBuilder: () => CategoryHeaderViewModel());
  }

  Widget buildCategory(int index, CategoryHeaderViewModel model) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              model.data?[index].name ?? "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
