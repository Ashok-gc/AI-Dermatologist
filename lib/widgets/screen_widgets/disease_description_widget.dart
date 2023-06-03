import 'package:flutter/material.dart';
import '../../utils/constants/app_constants.dart';

class StepperDisabledWidget extends StatelessWidget {
  final String topicText;
  final List<String> topicDescriptionText;

  const StepperDisabledWidget({
    Key? key,
    required this.topicText,
    required this.topicDescriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppGaps.wGap55,
            AppGaps.wGap16,
            Container(
              height: 32,
              width: 32,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 10,
                width: 10,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.black),
              ),
            ),
            AppGaps.wGap16,
            Text(
              topicText,
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
            )
          ],
        ),
        AppGaps.hGap10,
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.wGap16,
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: AppColors.primaryColor.withOpacity(0.15)))),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppGaps.wGap32,
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: topicDescriptionText.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.only(top: 6),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              AppGaps.wGap8,
                              Expanded(
                                child: Text(
                                  topicDescriptionText[index],
                                  style: const TextStyle(
                                    color: AppColors.bodyTextColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
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
      ],
    );
  }
}

class StepperEnabledWidget extends StatelessWidget {
  final String topicText;
  final List<String> topicDescriptionText;

  const StepperEnabledWidget({
    Key? key,
    required this.topicText,
    required this.topicDescriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppGaps.wGap2,
            Container(
              height: 32,
              width: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor.withOpacity(0.2)),
              child: Container(
                height: 16,
                width: 16,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                    color: AppColors.primaryColor),
              ),
            ),
            AppGaps.wGap16,
            Text(
              topicText,
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
            )
          ],
        ),
        AppGaps.hGap10,
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppGaps.wGap18,
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: AppColors.primaryColor.withOpacity(0.15)))),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppGaps.wGap32,
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: topicDescriptionText.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.only(top: 6),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              AppGaps.wGap8,
                              Expanded(
                                child: Text(
                                  topicDescriptionText[index],
                                  style: const TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
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
      ],
    );
  }
}

