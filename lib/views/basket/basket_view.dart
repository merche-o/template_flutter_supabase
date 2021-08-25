import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/views/basket/basket_checkout.dart';
import 'package:template_flutter_supabase/views/basket/basket_viewmodel.dart';
import 'package:template_flutter_supabase/views/basket/basket_body.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasketViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "${model.getitemNumber()} items",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: BasketBody(model),
        bottomNavigationBar: CheckoutCard(model),
      ),
      viewModelBuilder: () => BasketViewModel(),
    );
  }
}
