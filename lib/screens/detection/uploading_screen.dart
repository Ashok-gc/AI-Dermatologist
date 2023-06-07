// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import '../../utils/constants/app_constants.dart';
// import '../../widgets/core_widgets.dart';

// class UploadingScreen extends StatefulWidget {
//   const UploadingScreen({Key? key}) : super(key: key);

//   @override
//   State<UploadingScreen> createState() => _UploadingScreenState();
// }

// class _UploadingScreenState extends State<UploadingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       appBar: CoreWidgets.appBarWidget(
//         screenContext: context,
//         hasBackButton: false,
//         titleWidget: const Text(''),
//       ),
//       body: CustomScaffoldBodyWidget2(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AppGaps.hGap15,
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: AppGaps.screenPaddingValue,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: AppColors.container2,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
//                 ),
//                 child: Column(
//                   children: [
//                     AppGaps.hGap24,
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: const [
//                         Expanded(
//                           child: Text(
//                             'Uploading',
//                             style: TextStyle(
//                               color: AppColors.primaryColor,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Container(
//                       width: 420,
//                       height: 150,
//                       decoration: BoxDecoration(
//                         color: AppColors.primaryColor,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           SpinKitCircle(
//                             color: Colors.white,
//                             size: 60.0,
//                           ),
//                           AppGaps.hGap30,
//                           Text(
//                             'Uploading photo...',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     AppGaps.hGap10,
//                     const Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 5),
//                         child: Text(
//                           'Please wait, image is uploading...',
//                           style: TextStyle(
//                             color: AppColors.primaryColor,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomScaffoldBottomBarWidget(
//         backgroundColor: AppColors.container2,
//         child: CustomStretchedButtonWidget4(
//           onTap: () {},
//           child: const Text('Cancel'),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

class UploadingScreen extends StatefulWidget {
  const UploadingScreen({Key? key}) : super(key: key);

  @override
  State<UploadingScreen> createState() => _UploadingScreenState();
}

class _UploadingScreenState extends State<UploadingScreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppPageNames.imageUploadedScreen);
    });
  }

  void _cancelUpload() {
    _timer.cancel();
    Navigator.pushNamed(context, AppPageNames.homeNavigatorScreen);
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

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
                child: Column(
                  children: [
                    AppGaps.hGap24,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Text(
                            'Uploading',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppGaps.hGap20,
                    Container(
                      width: 420,
                      height: 150,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SpinKitCircle(
                            color: Colors.white,
                            size: 60.0,
                          ),
                          AppGaps.hGap30,
                          Text(
                            'Uploading photo...',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppGaps.hGap10,
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Please wait, image is uploading...',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        backgroundColor: AppColors.container2,
        child: CustomStretchedButtonWidget4(
          onTap: _cancelUpload, // Cancel upload and navigate to homeScreen
          child: const Text('Cancel'),
        ),
      ),
    );
  }
}
