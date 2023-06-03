import 'package:flutter/material.dart';
import '../../models/fake_data.dart';
import '../../utils/constants/app_constants.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/faq_screen_widgets.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.container3,
        appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          titleWidget: const Text('FAQ',
              style: TextStyle(color: AppColors.primaryColor)),
          hasBackButton: true,
        ),
        body: CustomScaffoldBodyWidget(
          child: ListView.builder(
            itemCount: FakeData.fakeFAQs.length,
            itemBuilder: (context, index) {
              final faq = FakeData.fakeFAQs[index];
              return FAQListTileWidget(
                question: faq.questions,
                answer: faq.answers,
              );
            },
          ),
        ));
  }
}
