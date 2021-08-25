import 'package:flutter_stripe/flutter_stripe.dart';

void setupStripe() {
  Stripe.publishableKey =
      "pk_test_51JSICNAiAmuNNVuuGDAKYgR1WcQWUR9CYvDLRmnIkkqErQQd5xbcuIHsHmULwWfhVoIjZWDgHZC5RFBixRNvVFHG00TpOvV867";
  Stripe.merchantIdentifier = 'MerchantIdentifier';
}
