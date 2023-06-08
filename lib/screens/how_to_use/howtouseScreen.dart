// import 'package:flutter/material.dart';


// class OnboardingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: VideoWidget(videoPath: 'assets/htu/video.mp4'), // Load video from local storage
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               child: ImageSlider(
//                 slideItems: [
//                   SlideItem(
//                     imagePath: 'assets/htu/1.png',
//                     text: 'Text for the first image',
//                   ),
//                   SlideItem(
//                     imagePath: 'assets/htu/2.png',
//                     text: 'Text for the second image',
//                   ),
//                   SlideItem(
//                     imagePath: 'assets/htu/3.png',
//                     text: 'Text for the third image',
//                   ),
//                   SlideItem(
//                     imagePath: 'assets/htu/4.png',
//                     text: 'Text for the fourth image',
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_constants.dart';
import '../../widgets/core_widgets.dart';

class HowToUseAppPageScreen extends StatefulWidget {
  const HowToUseAppPageScreen({super.key});

  @override
  State<HowToUseAppPageScreen> createState() => _HowToUseAppPageScreenState();
}

class _HowToUseAppPageScreenState extends State<HowToUseAppPageScreen> {
  @override
  Widget build(BuildContext context) {
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
                    CustomHorizontalDashedLineWidget(
                        color: AppColors.white.withOpacity(0.1)),
                    AppGaps.hGap5,
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
                            children: [
                              Expanded(
                                /* <---- Expiration date text field ----> */
                                child: CustomTextFormField(
                                  labelText: 'First Name',
                                  prefixIcon: SvgPicture.asset(
                                      AppAssetImages.profileSVGLogoLine),
                                  hintText: 'Ram',
                                  textInputType: TextInputType.text,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
        backgroundColor: AppColors.container2,
          child: CustomStretchedButtonWidget(
        onTap: () {},
        child: const Text('Close'),
      )),
    );
  }
}
