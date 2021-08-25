import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/services/basketService.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';
import 'package:template_flutter_supabase/views/basket/basket_card.dart';
import 'package:template_flutter_supabase/views/basket/basket_viewmodel.dart';

class BasketBody extends StatefulWidget {
  BasketViewModel model;
  BasketBody(this.model);
  @override
  _BodyState createState() => _BodyState(model);
}

class _BodyState extends State<BasketBody> {
  BasketViewModel model;
  _BodyState(this.model);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasketViewModel>.reactive(
        builder: (context, model, child) => Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: ListView.builder(
                itemCount: model.productList.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        model.removeAllProduct(
                            model.productList.entries.elementAt(index).key);
                      });
                    },
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE6E6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [Spacer(), Icon(Icons.delete)],
                      ),
                    ),
                    child:
                        BasketCard(model.productList.entries.elementAt(index)),
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => model);
  }
}
