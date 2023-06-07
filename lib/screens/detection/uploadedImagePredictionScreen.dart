import 'package:flutter/material.dart';

import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/my_disease_desc_screen_widgets.dart';

class UploadedImagePredictionScreen extends StatefulWidget {
  const UploadedImagePredictionScreen({Key? key}) : super(key: key);

  @override
  State<UploadedImagePredictionScreen> createState() =>
      _UploadedImagePredictionScreenState();
}

class _UploadedImagePredictionScreenState
    extends State<UploadedImagePredictionScreen> {
  final List<Map<String, dynamic>> diseaseData = [
    {
      'diseaseName': 'Disease 1',
      'diseaseImage': 'assets/images/demo_images/my_account_profile_picture.jpg',
      'dateText': 'June 1, 2023',
      'riskAssessment': 'High',
      'result': 'Positive',
      'preciseDiagnosis': 'Diagnosis 1',
      'advice': 'Advice 1',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: false,
        titleWidget: const Text(''),
      ),
      body: CustomScaffoldBodyWidget2(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  itemCount: diseaseData.length,
                  itemBuilder: (context, index) {
                    final myDisease = diseaseData[index];
                    return MyDiseaseDescWidget(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppPageNames.uploadedImagePredictionDetailsScreen);
                      },
                      diseaseName: myDisease['diseaseName'],
                      diseaseImage: AssetImage(myDisease['diseaseImage']),
                      dateText: myDisease['dateText'],
                      riskAssessment: myDisease['riskAssessment'],
                      result: myDisease['result'],
                      preciseDiagnosis: myDisease['preciseDiagnosis'],
                      advice: myDisease['advice'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: CustomScaffoldBottomBarWidget(
          backgroundColor: AppColors.container2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomStretchedButtonWidget(
                onTap: () {
                  Navigator.pushNamed(context, AppPageNames.analysissaveFormScreen);
                },
                child: const Text('Save Results'),
              ),
              AppGaps.hGap10,
              CustomStretchedButtonWidget4(
                onTap: () {
                  Navigator.pushNamed(context, AppPageNames.homeNavigatorScreen);
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
