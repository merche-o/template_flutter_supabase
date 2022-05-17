import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_flutter_supabase/app/app.locator.dart';
import 'package:template_flutter_supabase/app/app.router.dart';
import 'package:template_flutter_supabase/services/basketService.dart';
import 'package:template_flutter_supabase/uicomponents/app_button.dart';
import 'package:template_flutter_supabase/utlis/helper.dart';
import 'package:template_flutter_supabase/views/basket/basket_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CheckoutCard extends StatelessWidget {
  BasketViewModel model;
  final _navService = locator<NavigationService>();

  CheckoutCard(this.model);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasketViewModel>.reactive(
      builder: (context, model, child) => Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30),
        ),
        // height: 174,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: getProportionateScreenWidth(40),
                    width: getProportionateScreenWidth(40),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.receipt),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Total:\n",
                      children: [
                        TextSpan(
                          text: "\$${model.getTotal()}",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: AppButton(
                      label: "Check out",
                      onPressed: () {
                       // _navService.navigateTo(Routes.paymentView);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () {
        return BasketViewModel();
      },
    );
  }
}
