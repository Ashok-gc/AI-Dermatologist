import 'package:flutter/material.dart';

class FakeMyDiseaseModel {
  String diseasename;
  ImageProvider<Object> diseaseImage;
  String dateText;
  String riskassessment;
  String result;
  String precisediagnosis;
  String advice;
  FakeMyDiseaseModel({
    required this.diseasename,
    required this.diseaseImage,
    required this.dateText,
    required this.riskassessment,
    required this.result,
    required this.precisediagnosis,
    required this.advice,
  });
}
