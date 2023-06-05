import 'package:ai_dermatologist/widgets/screen_widgets/history/history_back_body_widget.dart';
import 'package:ai_dermatologist/widgets/screen_widgets/history/history_front_body_widget..dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/core_widgets.dart';
import '../../utils/constants/app_constants.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool _showHistoryFrontBody = true;

  void _toggleBody() {
    setState(() {
      _showHistoryFrontBody = !_showHistoryFrontBody;
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
            const Center(
              child: Padding(
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
            ), 
            Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 210,
                width: MediaQuery.of(context).size.width - 180,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Center(
                        child: _showHistoryFrontBody
                            ? const HistoryFrontBodyWidget()
                            : const HistoryBackBodyWidget(),
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
                                  _showHistoryFrontBody
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
          ],
        ),
      ),
    );
  }
}
