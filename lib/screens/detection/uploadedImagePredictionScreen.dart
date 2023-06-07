import 'package:flutter/material.dart';

import '../../models/fake_data.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/my_disease_desc_screen_widgets.dart';

class UploadedImagePredictionScreen extends StatefulWidget {
  const UploadedImagePredictionScreen({super.key});

  @override
  State<UploadedImagePredictionScreen> createState() => _UploadedImagePredictionScreenState();
}

class _UploadedImagePredictionScreenState extends State<UploadedImagePredictionScreen> {
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
                  itemCount: FakeData.diesaseDescription.length,
                  itemBuilder: (context, index) {
                    final myDisease = FakeData.diesaseDescription[index];
                    return MyDiseaseDescWidget(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppPageNames.uploadedImagePredictionDetailsScreen);
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
      bottomNavigationBar: SafeArea(
        child: CustomScaffoldBottomBarWidget(
          backgroundColor: AppColors.container2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomStretchedButtonWidget(
                onTap: () {
                  // Handle 'Done' button tap
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
