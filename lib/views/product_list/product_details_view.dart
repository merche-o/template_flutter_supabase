import 'dart:math';

import 'package:flutter/material.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/uicomponents/add_to_cart.dart';
import 'package:template_flutter_supabase/uicomponents/details_view_components/color_and_size.dart';
import 'package:template_flutter_supabase/uicomponents/details_view_components/counter_with_fav_btn.dart';
import 'package:template_flutter_supabase/uicomponents/details_view_components/description.dart';
import 'package:template_flutter_supabase/uicomponents/details_view_components/product_title_with_image.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor:
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.white,
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),

      body: Body(product),
    );
  }
}

class Body extends StatelessWidget {
  final Product product;

  const Body(this.product);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      //  ColorAndSize(product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
