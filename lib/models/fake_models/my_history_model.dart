import 'package:flutter/material.dart';

class FakeMyHistoryModel {
  String name;
  String price;
  ImageProvider<Object> diseaseImage;
  String dateText;
  String orderStatus;
  FakeMyHistoryModel({
    required this.name,
    required this.price,
    required this.diseaseImage,
    required this.dateText,
    required this.orderStatus,
  });
}
