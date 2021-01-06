@JS()
library stripe;

import 'package:entrenaappweb/checkout/server_stub.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:js/js.dart';

void redirectToCheckout(BuildContext _,) async {
 
  final stripe = Stripe(apiKey);
  stripe.redirectToCheckout(CheckoutOptions(
    lineItems: [
      LineItem(price: nikesPriceId, quantity: 1),
    ],
    mode: 'payment',
    successUrl: 'https://carlosmedina10.github.io/#/success',
    cancelUrl: 'https://carlosmedina10.github.io/#/',

  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions options);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get successUrl;

  external String get cancelUrl;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}
