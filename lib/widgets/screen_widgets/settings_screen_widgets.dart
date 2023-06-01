
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../core_widgets.dart';

/// Setting list tile from settings screen
class SettingsListTileWidget extends StatelessWidget {
  final String titleText;
  final Widget? valueWidget;
  final void Function()? onTap;
  final bool showRightArrow;
  const SettingsListTileWidget({
    Key? key,
    required this.titleText,
    this.valueWidget,
    this.onTap,
    this.showRightArrow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              titleText,
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
            )),
            valueWidget ?? AppGaps.emptyGap,
            showRightArrow ? AppGaps.wGap8 : AppGaps.emptyGap,
            showRightArrow
                ? Transform.scale(
                    scaleX: -1,
                    child: SvgPicture.asset(AppAssetImages.arrowLeftSVGLogoLine,
                        color: AppColors.primaryColor))
                : AppGaps.emptyGap,
          ],
        ));
  }
}

class SettingsValueTextWidget extends StatelessWidget {
  final String text;
  const SettingsValueTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: AppColors.primaryColor),
    );
  }
}
