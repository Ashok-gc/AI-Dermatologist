import 'package:flutter/material.dart';

class ProductReview {
  String reviewerName;
  int rating;
  String reviewDateText;
  String reviewText;
  ImageProvider<Object> reviewerProfileImage;
  ProductReview({
    required this.reviewerName,
    required this.rating,
    required this.reviewDateText,
    required this.reviewText,
    required this.reviewerProfileImage,
  });
}
