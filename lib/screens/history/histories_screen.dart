
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../utils/constants/app_constants.dart';
// import '../../widgets/core_widgets.dart';

// class MyHistoryScreen extends StatefulWidget {
//   const MyHistoryScreen({Key? key}) : super(key: key);

//   @override
//   State<MyHistoryScreen> createState() => _MyHistoryScreenState();
// }

// class _MyHistoryScreenState extends State<MyHistoryScreen> {
//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: true,
//           titleWidget: const Text('')),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget2(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Top extra spaces
//               AppGaps.hGap15,
//               /* <---- Profile picture, name, phone number, email address
//                        ----> */
//               Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     AppGaps.hGap18,
//                     /* <---- Profile name ----> */
//                     const Text('History / Front',
//                         style: TextStyle(
//                             color: AppColors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600)),
//                     AppGaps.hGap20,

//                     /* <---- Edit your name ----> */
//                     Container(
//                       width: double.infinity,
//                       // height: double.infinity,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: AppGaps.screenPaddingValue),
//                       decoration: const BoxDecoration(
//                       color: AppColors.container,
//                           borderRadius:
//                               BorderRadius.vertical(top: Radius.circular(20))),
                      
//                       child: Column(
//                         children: [
//                           AppGaps.hGap24,
//                           /* <---- Edit your date of birth ----> */
//                           CustomTextFormField(
//                             labelText: 'Email address',
//                             hintText: 'contact@gmail.com',
//                             prefixIcon: SvgPicture.asset(
//                                 AppAssetImages.messageSVGLogoLine),
//                           ),
//                           AppGaps.hGap50,
//                         ],
//                       ),
//                     ),
//                     // AppGaps.hGap30,
//                     // Bottom extra spaces
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_constants.dart';
import '../../widgets/core_widgets.dart';

class MyHistoryScreen extends StatefulWidget {
  const MyHistoryScreen({Key? key}) : super(key: key);

  @override
  State<MyHistoryScreen> createState() => _MyHistoryScreenState();
}

class _MyHistoryScreenState extends State<MyHistoryScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          hasBackButton: true,
          titleWidget: const Text('')),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top extra spaces
              AppGaps.hGap15,
              /* <---- Profile picture, name, phone number, email address
                       ----> */
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppGaps.hGap18,
                    /* <---- Profile name ----> */
                    const Text('History / Front',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    AppGaps.hGap20,

                    /* <---- Edit your name ----> */
                    Container(
                      width: double.infinity,
                      // height: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppGaps.screenPaddingValue),
                      decoration: const BoxDecoration(
                      color: AppColors.container,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      
                      child: Column(
                        children: [
                          AppGaps.hGap24,
                          /* <---- Edit your date of birth ----> */
                          CustomTextFormField(
                            labelText: 'Email address',
                            hintText: 'contact@gmail.com',
                            prefixIcon: SvgPicture.asset(
                                AppAssetImages.messageSVGLogoLine),
                          ),
                          AppGaps.hGap50,
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
    );
  }
}