import 'package:flutter/material.dart';

import 'fake_models/intro_content_model.dart';
import 'fake_models/my_history_model.dart';

class FakeData {
  // Intro screens
  static List<FakeIntroContent> fakeIntroContents = [
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/first2.png',
        slogan: 'Say No Doctor?',
        content:
            '"Check your skin from home. Save your time and life before detecting a mole early stage from the smartphone.'),
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/first3.png',
        slogan: 'Artificial Intelligence',
        content:
            'Check your skin on the smartphone by sending your photo to Artificial Intelligence and get instant results within 1 minute.'),
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/first4.png',
        slogan: 'Say No To Skin Disease',
        content:
            'Check you skin on the smartphone and get instant results within 1 minute.'),
  ];

  static List<FakeMyHistoryModel> myHistorys = [
    FakeMyHistoryModel(
        name: 'Cancer',
        price: '23.00',
        diseaseImage:
            Image.asset('assets/images/demo_images/my_account_profile_picture.jpg').image,
        dateText: '26 Dec, 2021'),
    FakeMyHistoryModel(
        name: 'Cancer',
        price: '23.00',
        diseaseImage:
            Image.asset('assets/images/demo_images/my_account_profile_picture.jpg').image,
        dateText: '26 Dec, 2021'),
  ];
}