import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

class PredictedAnalysisSaveFormScreen extends StatefulWidget {
  const PredictedAnalysisSaveFormScreen({Key? key}) : super(key: key);

  @override
  State<PredictedAnalysisSaveFormScreen> createState() =>
      _PredictedAnalysisSaveFormScreenState();
}

class _PredictedAnalysisSaveFormScreenState
    extends State<PredictedAnalysisSaveFormScreen> {
  int? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: false,
        titleWidget: const Text('Save Data'),
      ),
      body: CustomScaffoldBodyWidget2(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppGaps.screenPaddingValue),
                      decoration: const BoxDecoration(
                          color: AppColors.container2,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Column(
                        children: [
                          AppGaps.hGap24,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Expanded(
                                child: Text(
                                  'Save Result',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppGaps.hGap5,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Expanded(
                                child: Text(
                                  'To further track the dynamics of the stored object, you need to specify a name and save the result of the analysis.',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppGaps.hGap24,
                          CustomTextFormField(
                            isReadOnly: true,
                            labelText: 'Select Category',
                            hintText: getCategoryText(selectedCategory),
                            prefixIcon: AppGaps.emptyGap,
                            suffixIcon: PopupMenuButton<int>(
                              padding: const EdgeInsets.only(right: 5),
                              position: PopupMenuPosition.under,
                              child: CustomIconButtonWidget(
                                fixedSize: const Size(20, 20),
                                child: SvgPicture.asset(
                                    AppAssetImages.arrowDownSVGLogoLine,
                                    height: 12,
                                    color: AppColors.primaryColor),
                              ),
                              itemBuilder: (context) => [
                                PopupMenuItem<int>(
                                  value: 0,
                                  child: const Text(
                                    'Head',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 0;
                                    });
                                  },
                                ),
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: const Text(
                                    'Body',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 1;
                                    });
                                  },
                                ),
                                PopupMenuItem<int>(
                                  value: 2,
                                  child: const Text(
                                    'Right Arm',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 2;
                                    });
                                  },
                                ),
                                PopupMenuItem<int>(
                                  value: 3,
                                  child: const Text(
                                    'Left Arm',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 3;
                                    });
                                  },
                                ),
                                PopupMenuItem<int>(
                                  value: 4,
                                  child: const Text(
                                    'Right Leg',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 4;
                                    });
                                  },
                                ),
                                PopupMenuItem<int>(
                                  value: 5,
                                  child: const Text(
                                    'Left Leg',
                                    style:
                                        TextStyle(color: AppColors.primaryColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = 5;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          AppGaps.hGap24,
                          CustomTextFormField(
                            labelText: 'Save new object*',
                            hintText: 'Scan Result 1',
                            textInputType: TextInputType.text,
                            prefixIcon:
                                SvgPicture.asset(AppAssetImages.tasksquareSVG),
                          ),
                          AppGaps.hGap24,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: CustomScaffoldBottomBarWidget(
          backgroundColor: AppColors.container2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomStretchedButtonWidget6(
                onTap: () {
                  Navigator.pushNamed(
                      context, AppPageNames.homeNavigatorScreen);
                },
                child: const Text('Save Result'),
              ),
              AppGaps.hGap10,
              CustomStretchedButtonWidget5(
                onTap: () {
                  Navigator.pushNamed(
                      context, AppPageNames.homeNavigatorScreen);
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getCategoryText(int? category) {
    if (category == null) {
      return 'Select a Category';
    } else {
      switch (category) {
        case 0:
          return 'Head';
        case 1:
          return 'Body';
        case 2:
          return 'Right Arm';
        case 3:
          return 'Left Arm';
        case 4:
          return 'Right Leg';
        case 5:
          return 'Left Leg';
        default:
          return 'Select a Category';
      }
    }
  }
}
