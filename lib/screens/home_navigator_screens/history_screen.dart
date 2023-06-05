import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';
import '../../widgets/screen_widgets/history/history_back_body_widget.dart';
import '../../widgets/screen_widgets/history/history_front_body_widget..dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
          if (_showFrontBody)
            const HistoryFrontBodyWidget()
          else
            const HistoryBackBodyWidget(),
          Positioned(
            top: 550,
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
    );
  }
}
