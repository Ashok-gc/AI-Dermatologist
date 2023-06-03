import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core_widgets.dart';

class FAQListTileWidget extends StatefulWidget {
  final String question;
  final String answer;

  const FAQListTileWidget({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FAQListTileWidgetState createState() => _FAQListTileWidgetState();
}

class _FAQListTileWidgetState extends State<FAQListTileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(13), // Adjust the value as desired
        ),
        child: CustomListTileWidget(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.question,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  if (_isExpanded)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isExpanded = false;
                        });
                      },
                      child: Transform.scale(
                        scale: -1,
                        child: SvgPicture.asset(
                          AppAssetImages.downarrowSVGLogoSolid,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  if (!_isExpanded)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isExpanded = true;
                        });
                      },
                      child: SvgPicture.asset(
                        AppAssetImages.arrowDownSVGLogoLine,
                        color: AppColors.primaryColor,
                      ),
                    ),
                ],
              ),
              if (_isExpanded) ...[
                AppGaps.hGap10,
                Text(
                  widget.answer,
                  style: const TextStyle(color: AppColors.black),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
