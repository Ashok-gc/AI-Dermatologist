import 'package:flutter/material.dart';

class FakeRecentPaymentProduct {
  String productName;
  String paymentDateTimeText;
  String priceText;
  int itemCount;
  ImageProvider<Object> productImage;
  FakeRecentPaymentProduct({
    required this.productName,
    required this.paymentDateTimeText,
    required this.priceText,
    required this.itemCount,
    required this.productImage,
  });
}
