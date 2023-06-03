import 'package:flutter/material.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

import '../../models/fake_data.dart';
import '../../widgets/screen_widgets/alertdialogue_widgets.dart';
import '../../widgets/screen_widgets/my_disease_desc_screen_widgets.dart';

class HistoryDiseaseDescScreen extends StatefulWidget {
  const HistoryDiseaseDescScreen({Key? key}) : super(key: key);

  @override
  State<HistoryDiseaseDescScreen> createState() => _HistoryDiseaseDescScreenState();
}

class _HistoryDiseaseDescScreenState extends State<HistoryDiseaseDescScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: true,
        titleWidget: const Text(''),
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
                  'Prediction Overview',
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
                  color: AppColors.container2,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  separatorBuilder: (context, index) => AppGaps.hGap16,
                  itemCount: FakeData.diesaseDescription.length,
                  itemBuilder: (context, index) {
                    final myDisease = FakeData.diesaseDescription[index];
                    return MyDiseaseDescWidget(
                      onTap: () {
                        Navigator.pushNamed(
                          context, AppPageNames.diseaseDescScreen);
                      },
                      diseaseName: myDisease.diseasename,
                      diseaseImage: myDisease.diseaseImage,
                      dateText: myDisease.dateText,
                      riskAssessment: myDisease.riskassessment,
                      result: myDisease.result,
                      preciseDiagnosis: myDisease.precisediagnosis,
                      advice: myDisease.advice,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
  backgroundColor: AppColors.container2,
  child: CustomStretchedButtonWidget2(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
            title: 'Confirmation',
            message: 'Are you sure you want to delete the data?',
            onDeletePressed: () {
              // Add your delete logic here
              Navigator.of(context).pop();
            },
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
          );
        },
      );
    },
    child: const Text('Delete'),
  ),
),

      // bottomNavigationBar: CustomScaffoldBottomBarWidget(
      //   backgroundColor: AppColors.container2,
      //   child: CustomStretchedButtonWidget2(
      //     onTap: () {
      //       showDialog(
      //         context: context,
      //         builder: (BuildContext context) {
      //           return AlertDialog(
      //             title: const Text('Confirmation'),
      //             content: const Text('Are you sure you want to delete?'),
      //             actions: [
      //               TextButton(
      //                 onPressed: () {
      //                   Navigator.of(context).pop();
      //                 },
      //                 child: const Text('Cancel'),
      //               ),
      //               TextButton(
      //                 onPressed: () {
      //                   // Add your delete logic here
      //                   Navigator.of(context).pop();
      //                 },
      //                 child: const Text('Delete'),
      //               ),
      //             ],
      //           );
      //         },
      //       );
      //     },
      //     child: const Text('Delete'),
      //   ),
      // ),
    );
  }
}
