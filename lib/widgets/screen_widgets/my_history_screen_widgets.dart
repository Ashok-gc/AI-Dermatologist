import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../core_widgets.dart';

/// disease list tile for my order tab page from home screen.
class MyHistoryWidget extends StatelessWidget {
  final void Function()? onTap;
  final ImageProvider<Object> diseaseImage;
  final String diseaseName;
  final String dateText;
  const MyHistoryWidget({
    Key? key,
    this.onTap,
    required this.diseaseImage,
    required this.diseaseName,
    required this.dateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
        paddingValue: const EdgeInsets.all(16),
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image:
                      DecorationImage(image: diseaseImage, fit: BoxFit.cover)),
            ),
            AppGaps.wGap16,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    diseaseName,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppGaps.hGap16,
                Text(
                  dateText,
                  style: const TextStyle(
                      fontSize: 12, color: AppColors.black),
                ),
              ],
            )
          ],
        ));
  }
}
