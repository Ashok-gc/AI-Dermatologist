import 'fake_models/intro_content_model.dart';

class FakeData {
  // Intro screens
  static List<FakeIntroContent> fakeIntroContents = [
    FakeIntroContent(
        localSVGImageLocation: 'assests/images/img-1.png',
        slogan: 'Discover something new',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
    FakeIntroContent(
        localSVGImageLocation: 'assests/images/img-2.png',
        slogan: 'Clearly different',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
    FakeIntroContent(
        localSVGImageLocation: 'assests/images/img-3.png',
        slogan: 'Buy, think & grow',
        content:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
  ];
}