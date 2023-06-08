import 'package:ai_dermatologist/widgets/screen_widgets/how_to_use_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/fake_data.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

class HowToUseAppPageScreen extends StatefulWidget {
  const HowToUseAppPageScreen({Key? key}) : super(key: key);

  @override
  State<HowToUseAppPageScreen> createState() => _HowToUseAppPageScreenState();
}

class _HowToUseAppPageScreenState extends State<HowToUseAppPageScreen> {
  final PageController _pageController = PageController(keepPage: false);

  /// Go to next intro section
  void _gotoNextIntroSection(BuildContext context) {
    // If intro section ends, goto sign in screen.
    if (_pageController.page == FakeData.fakeHowToUseContent.length - 1) {
      Navigator.pushNamed(context, AppPageNames.homeNavigatorScreen);
    }
    // Goto next intro section
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          hasBackButton: false,
          titleWidget: const Text('')),
      /* <-------- Content --------> */
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
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        /* <---- Profile picture ----> */
                        CircleAvatar(
                          backgroundImage: Image.asset(
                            AppAssetImages.myAccountProfilePicture,
                          ).image,
                          radius: 64,
                        ),
                        /* <---- Small camera circle icon button ----> */
                        Positioned(
                            bottom: 7,
                            right: -3,
                            child: IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(
                                  minHeight: 34, minWidth: 34),
                              icon: Container(
                                height: 34,
                                width: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        const Color.fromARGB(255, 236, 131, 99),
                                    border: Border.all(color: Colors.white)),
                                child: SvgPicture.asset(
                                  AppAssetImages.cameraSVGLogoSolid,
                                  height: 14,
                                  width: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                    AppGaps.hGap100,
                    AppGaps.hGap100,
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppGaps.screenPaddingValue),
                      decoration: const BoxDecoration(
                          color: AppColors.container3,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppGaps.hGap8,
                            SizedBox(
                              height: 216,
                              /* <---- Intro screens ----> */
                              child: PageView.builder(
                                controller: _pageController,
                                scrollDirection: Axis.horizontal,
                                itemCount: FakeData.fakeHowToUseContent.length,
                                itemBuilder: (context, index) {
                                  /// Single intro screen data
                                  final fakeHowToUseContent =
                                      FakeData.fakeHowToUseContent[index];
                                  /* <---- Single Intro screen widget ----> */
                                  return HTUContentWidget(
                                      screenSize: screenSize,
                                      localImageLocation: fakeHowToUseContent
                                          .localSVGImageLocation,
                                      subtitle: fakeHowToUseContent.content);
                                },
                              ),
                            ),
                            // AppGaps.hGap80,
                            SizedBox(
                              /* <---- Current page dot indicator widget ----> */
                              child: SmoothPageIndicator(
                                controller: _pageController,
                                count: FakeData.fakeHowToUseContent.length,
                                axisDirection: Axis.horizontal,
                                effect: const ExpandingDotsEffect(
                                    dotHeight: 10,
                                    dotWidth: 10,
                                    spacing: 4,
                                    expansionFactor: 3,
                                    activeDotColor: AppColors.primaryColor,
                                    dotColor: AppColors.bodyTextColor),
                              ),
                            ),
                            AppGaps.hGap13,
                          ]),
                    ),
                    // AppGaps.hGap30,
                    // Bottom extra spaces
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /* <-------- Bottom bar --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
          backgroundColor: AppColors.container3,
          child: CustomStretchedButtonWidget4(
            onTap: () {
              Navigator.pushNamed(context, AppPageNames.homeNavigatorScreen);
            },
            child: const Text('Close'),
          )),
    );
  }
}
