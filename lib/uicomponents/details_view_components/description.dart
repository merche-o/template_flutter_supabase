import 'package:flutter/material.dart';
import 'package:template_flutter_supabase/model/product/product.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';

class Description extends StatelessWidget {
  const Description(
    this.product,
  );

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description ?? "",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
