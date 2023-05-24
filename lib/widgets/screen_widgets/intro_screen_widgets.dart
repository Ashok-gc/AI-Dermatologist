
import 'package:flutter/material.dart';

import '../../utils/constants/app_gaps.dart';
import '../core_widgets.dart';

/// Per intro page content widget
class IntroContentWidget extends StatelessWidget {
  final Size screenSize;
  final String localImageLocation;
  final String slogan;
  final String subtitle;
  const IntroContentWidget({
    Key? key,
    required this.localImageLocation,
    required this.slogan,
    required this.subtitle,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(localImageLocation, height: 240),
          AppGaps.hGap25,
          HighlightAndDetailTextWidget(slogan: slogan, subtitle: subtitle),
        ],
      ),
    );
  }
}
