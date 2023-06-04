// s










// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../../utils/constants/app_page_names.dart';
// import '../../widgets/core_widgets.dart';
// import '../../widgets/screen_widgets/home/back_body_widget.dart';
// import '../../widgets/screen_widgets/home/front_body_widget.dart';
// import '../../utils/constants/app_constants.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool _showFrontBody = true;

//   void _toggleBody() {
//     setState(() {
//       _showFrontBody = !_showFrontBody;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: false,
//           titleWidget: const Text('')),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(left: 25),
//             child: Text(
//               'Your Personal',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: AppColors.white,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//           AppGaps.hGap3,
//           const Padding(
//             padding: EdgeInsets.only(left: 25),
//             child: Text(
//               'AI Dermalogist',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: AppColors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           AppGaps.hGap10,
//           GestureDetector(
//             onTap: () {
//               Navigator.pushNamed(
//                 context,
//                 AppPageNames.editProfileScreen,
//               );
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Text(
//                     'How to use?',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.help,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Center(
//                     child: _showFrontBody
//                         ? const FrontBodyWidget()
//                         : const BackBodyWidget(),
//                   ),
//                 ),
//                 Positioned(
//                   top: 460,
//                   right: 16,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       GestureDetector(
//                         onTap: _toggleBody,
//                         child: Container(
//                           width: 60,
//                           height: 80,
//                           decoration: BoxDecoration(
//                             color: AppColors.white,
//                             border: Border.all(color: Colors.black),
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           child: Center(
//                             child: Image.asset(
//                               _showFrontBody
//                                   ? 'assets/back_image.png'
//                                   : 'assets/front_image.png',
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Transform.rotate(
//                         angle: 180 *
//                             3.1415926535 /
//                             180, // Rotate by 180 degrees (pi radians)
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: SvgPicture.asset(
//                             AppAssetImages.arrowLeftSVGLogoLine,
//                             color: AppColors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../../utils/constants/app_page_names.dart';
// import '../../widgets/core_widgets.dart';
// import '../../widgets/screen_widgets/home/back_body_widget.dart';
// import '../../widgets/screen_widgets/home/front_body_widget.dart';
// import '../../utils/constants/app_constants.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool _showFrontBody = true;

//   void _toggleBody() {
//     setState(() {
//       _showFrontBody = !_showFrontBody;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       appBar: CoreWidgets.appBarWidget(
//         screenContext: context,
//         hasBackButton: false,
//         titleWidget: const Text(''),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(left: 25),
//             child: Text(
//               'Your Personal',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: AppColors.white,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//           AppGaps.hGap3,
//           const Padding(
//             padding: EdgeInsets.only(left: 25),
//             child: Text(
//               'AI Dermalogist',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: AppColors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           AppGaps.hGap10,
//           GestureDetector(
//             onTap: () {
//               Navigator.pushNamed(
//                 context,
//                 AppPageNames.editProfileScreen,
//               );
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Text(
//                     'How to use?',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.help,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: SizedBox(
//               height: double.infinity,
//               width: double.infinity,
//               child: Stack(
//                 children: [
//                   Positioned.fill(
//                     child: Center(
//                       child: _showFrontBody
//                           ? const FrontBodyWidget()
//                           : const BackBodyWidget(),
//                     ),
//                   ),
//                   Positioned(
//                     top: 460,
//                     right: 16,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         GestureDetector(
//                           onTap: _toggleBody,
//                           child: Container(
//                             width: 60,
//                             height: 80,
//                             decoration: BoxDecoration(
//                               color: AppColors.white,
//                               border: Border.all(color: Colors.black),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: Center(
//                               child: Image.asset(
//                                 _showFrontBody
//                                     ? 'assets/back_image.png'
//                                     : 'assets/front_image.png',
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Transform.rotate(
//                           angle: 180 *
//                               3.1415926535 /
//                               180, // Rotate by 180 degrees (pi radians)
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: SvgPicture.asset(
//                               AppAssetImages.arrowLeftSVGLogoLine,
//                               color: AppColors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
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




//scrollable


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/home/back_body_widget.dart';
import '../../widgets/screen_widgets/home/front_body_widget.dart';
import '../../utils/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showFrontBody = true;

  void _toggleBody() {
    setState(() {
      _showFrontBody = !_showFrontBody;
    });
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Your Personal',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            AppGaps.hGap3,
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'AI Dermalogist',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppGaps.hGap10,
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppPageNames.editProfileScreen,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'How to use?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 260,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Center(
                      child: _showFrontBody
                          ? const FrontBodyWidget()
                          : const BackBodyWidget(),
                    ),
                  ),
                  Positioned(
                    top: 460,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: _toggleBody,
                          child: Container(
                            width: 60,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset(
                                _showFrontBody
                                    ? 'assets/back_image.png'
                                    : 'assets/front_image.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: 180 *
                              3.1415926535 /
                               180, // Rotate by 180 degrees (pi radians)
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              AppAssetImages.arrowLeftSVGLogoLine,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
