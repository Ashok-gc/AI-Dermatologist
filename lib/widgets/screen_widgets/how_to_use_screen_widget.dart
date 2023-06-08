
import 'package:flutter/material.dart';

import '../../utils/constants/app_gaps.dart';
import '../core_widgets.dart';

/// Per intro page content widget
class HTUContentWidget extends StatelessWidget {
  final Size screenSize;
  final String localImageLocation;
  final String subtitle;
  const HTUContentWidget({
    Key? key,
    required this.localImageLocation,
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
          Image.asset(localImageLocation, height: 140),
          AppGaps.hGap10,
          HighlightAndDetailTextWidget3( subtitle: subtitle),
        ],
      ),
    );
  }
}
