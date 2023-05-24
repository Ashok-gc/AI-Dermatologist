import 'fake_models/intro_content_model.dart';

class FakeData {
  // Intro screens
  static List<FakeIntroContent> fakeIntroContents = [
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/img-1.png',
        slogan: 'Say No Doctor?',
        content:
            '"Check your skin from home. Save your time and life before detecting a mole early stage from the smartphone.'),
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/img-2.png',
        slogan: 'Say No to Skin Diseases!',
        content:
            'Check your skin on the smartphone and get instant results within 1 minute. Take a Photo'),
    FakeIntroContent(
        localSVGImageLocation: 'assets/images/img-3.png',
        slogan: 'Artificial Intelligence',
        content:
            'Upload you photo to the Artificial Intelligence. The system will analyze it and give you a risk assessment.'),
  ];
}