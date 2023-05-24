import 'package:flutter/material.dart';

class FakeSimilarProduct {
  String productName;
  String productCategory;
  String priceText;
  bool isWishlisted;
  bool isAddedToCart;
  ImageProvider<Object> productImage;
  FakeSimilarProduct({
    required this.productName,
    required this.productCategory,
    required this.priceText,
    this.isWishlisted = false,
    this.isAddedToCart = false,
    required this.productImage,
  });
}
