import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/home/back_body_widget.dart';
import '../../widgets/screen_widgets/home/circlecontainer_widget.dart';
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
                  fontSize: 20,
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
                  fontSize: 25,
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
            Container(
              child: SizedBox(
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
                      top:350,
                      right: 1,
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
            ),
            AppGaps.hGap20,
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppGaps.screenPaddingValue),
              decoration: const BoxDecoration(
                color: Color.fromARGB(229, 242, 245, 252),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  AppGaps.hGap20,
                  const Text('Early Detection Makes a Difference',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor)),
                  AppGaps.hGap24,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppGaps.screenPaddingValue),
                    decoration: const BoxDecoration(
                      color: AppColors.container2,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        AppGaps.hGap15,
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF3BC5CE),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Our test can help you to',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'detect melanoma',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  AppGaps.wGap10,
                                  Image.asset(
                                    'assets/icons/logo.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        AppGaps.hGap10,
                        const Text(
                          'Finding melanoma at an early stage is crucial; early detection can vastly increase your chances for cure.',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black),
                        ),
                        AppGaps.hGap10,
                        const Text(
                          'Most moles, brown spots and growths on the skin are harmless - but not always.',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black),
                        ),
                        AppGaps.hGap10,
                        CustomStretchedButtonWidget3(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                /* <---- Next button ----> */
                                CustomSmallTextButtonWidget2(
                                    buttonText: 'Read More', onTap: () {}),
                              ]),
                        ),
                        AppGaps.hGap10,
                      ],
                    ),
                  ),
                  AppGaps.hGap20,
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Your Last Scanning',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  CircleContainer(
                    outerCircleColor: Colors.white.withOpacity(0.5),
                    innerCircleColor: Colors.white,
                    rightTexts: const [
                      'Photos Uploaded',
                      'Without Problems',
                      'Diagnosed Problems',
                    ],
                    rightValues: const [
                      '10',
                      '5',
                      '3',
                    ],
                  ),

                  AppGaps.hGap10
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
