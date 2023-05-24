import 'package:flutter/material.dart';

class FakeProductModel {
  String name;
  String shortDescription;
  String description;
  String price;
  bool isWishlisted;
  bool isAddedToCart;
  int cartCount;
  double rating;
  ImageProvider<Object> productImage;
  List<Color> availableColors;
  int selectedColorIndex;
  List<String> availableSizes;
  int selectedSizeIndex;
  FakeProductModel({
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.price,
    this.isWishlisted = false,
    this.isAddedToCart = false,
    this.cartCount = 1,
    required this.rating,
    required this.productImage,
    required this.availableColors,
    this.selectedColorIndex = 0,
    required this.availableSizes,
    this.selectedSizeIndex = 0,
  });
}
