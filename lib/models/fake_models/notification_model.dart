class FakeNotificationDateGroupModel {
  String dateHumanReadableText;
  List<FakeNotificationModel> groupNotifications;
  FakeNotificationDateGroupModel({
    required this.dateHumanReadableText,
    required this.groupNotifications,
  });
}

class FakeNotificationModel {
  String timeText;
  bool isRead;
  List<FakeNotificationTextModel> texts;
  FakeNotificationModel({
    required this.timeText,
    required this.isRead,
    required this.texts,
  });
}

class FakeNotificationTextModel {
  String text;
  bool isHashText;
  bool isColoredText;
  bool isBoldText;
  FakeNotificationTextModel({
    required this.text,
    this.isHashText = false,
    this.isColoredText = false,
    this.isBoldText = false,
  });
}
