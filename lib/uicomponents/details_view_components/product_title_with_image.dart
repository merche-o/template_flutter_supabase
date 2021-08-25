import 'package:flutter/material.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.description ?? "",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title ?? "",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: getProportionateScreenHeight(kDefaultPaddin)),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Price\n", style: TextStyle(color: Colors.white)),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(kDefaultPaddin)),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(kDefaultPaddin),
                    width: getProportionateScreenHeight(250),
                    height: getProportionateScreenHeight(250),

                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //  borderRadius: BorderRadius.circular(10)),
                    child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(
                        "assets/images/" + product.image!,
                        fit: BoxFit.contain,
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
