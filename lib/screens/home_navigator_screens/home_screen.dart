// import 'package:ai_dermatologist/utils/constants/app_constants.dart';
// import 'package:flutter/material.dart';

// import '../../widgets/screen_widgets/home/back_body_widget.dart';
// import '../../widgets/screen_widgets/home/front_body_widget.dart';

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
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Center(
//               child: _showFrontBody ? const FrontBodyWidget() : const BackBodyWidget(),
//             ),
//           ),
//           Positioned(
//             top: 460,
//             right: 16,
//             child: GestureDetector(
//               onTap: _toggleBody,
//               child: Container(
//                 width: 80,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: AppColors.white,
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Center(
//                   child: Image.asset(
//                     _showFrontBody ? 'assets/back_image.png' : 'assets/front_image.png',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Stack(
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
    );
  }
}
