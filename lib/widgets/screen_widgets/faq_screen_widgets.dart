
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../utils/constants/app_colors.dart';
// import '../../utils/constants/app_gaps.dart';
// import '../../utils/constants/app_images.dart';
// import '../core_widgets.dart';

// /// Setting list tile from FAQ screen
// class FAQListTileWidget extends StatelessWidget {
//   final String titleText;
//   final Widget? valueWidget;
//   final void Function()? onTap;
//   final bool showRightArrow;
//   const FAQListTileWidget({
//     Key? key,
//     required this.titleText,
//     this.valueWidget,
//     this.onTap,
//     this.showRightArrow = true,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomListTileWidget(
//         onTap: onTap,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//                 child: Text(
//               titleText,
//               style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
//             )),
//             valueWidget ?? AppGaps.emptyGap,
//             showRightArrow ? AppGaps.wGap8 : AppGaps.emptyGap,
//             showRightArrow
//                 ? Transform.scale(
//                     scaleX: -1,
//                     child: SvgPicture.asset(AppAssetImages.downarrowSVGLogoSolid,
//                         color: AppColors.primaryColor))
//                 : AppGaps.emptyGap,
//           ],
//         ));
//   }
// }

// class FAQValueTextWidget extends StatelessWidget {
//   final String text;
//   const FAQValueTextWidget({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(color: AppColors.primaryColor),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import '../../models/fake_models/faq_models.dart';
// import '../../utils/constants/app_colors.dart';
// import '../core_widgets.dart';

// class FAQListTileWidget extends StatefulWidget {
//   final FakeFAQModel faqModel;
//   const FAQListTileWidget({
//     Key? key,

//     required this.faqModel,
//   }) : super(key: key);

//   @override
//   _FAQListTileWidgetState createState() => _FAQListTileWidgetState();
// }

// class _FAQListTileWidgetState extends State<FAQListTileWidget> {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return CustomListTileWidget(
//       onTap: () {
//         setState(() {
//           _isExpanded = !_isExpanded;
//         });
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.faqModel.questions,
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//               color: AppColors.primaryColor,
//             ),
//           ),
//           if (_isExpanded)
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Text(
//                 widget.faqModel.answers,
//                 style: const TextStyle(color: AppColors.primaryColor),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }


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
  _FAQListTileWidgetState createState() => _FAQListTileWidgetState();
}

class _FAQListTileWidgetState extends State<FAQListTileWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
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
                      fontWeight: FontWeight.w600,
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
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  widget.answer,
                  style: const TextStyle(color: AppColors.black),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

