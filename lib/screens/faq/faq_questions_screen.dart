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
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: true,
      ),
      body: CustomScaffoldBodyWidget2(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppGaps.screenPaddingValue,
                ),
                child: Text(
                  'Frequently Asked Questions',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            AppGaps.hGap15,
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppGaps.screenPaddingValue,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(230, 242, 245, 252),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: Column(
                  children: [
                    AppGaps.hGap25,
                    Expanded(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
