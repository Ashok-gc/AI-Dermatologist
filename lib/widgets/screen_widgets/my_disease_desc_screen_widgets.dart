// import 'package:ai_dermatologist/utils/constants/app_constants.dart';
// import 'package:flutter/material.dart';

// import '../core_widgets.dart';

// /// disease list tile for my order tab page from home screen.
// class MyDiseaseDescWidget extends StatelessWidget {
//   final void Function()? onTap;
//   final ImageProvider<Object> diseaseImage;
//   final String diseaseName;
//   final String dateText;
//   final String riskAssessment;
//   final String result;
//   final String preciseDiagnosis;
//   final String advice;
//   const MyDiseaseDescWidget({
//     Key? key,
//     this.onTap,
//     required this.diseaseImage,
//     required this.diseaseName,
//     required this.dateText,
//     required this.riskAssessment,
//     required this.result,
//     required this.preciseDiagnosis,
//     required this.advice,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomListTileWidget(
//         paddingValue: const EdgeInsets.all(16),
//         onTap: onTap,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: 70,
//               width: 70,
//               decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   image:
//                       DecorationImage(image: diseaseImage, fit: BoxFit.cover)),
//             ),
//             AppGaps.wGap16,
//             Expanded(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     diseaseName,
//                     style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
//                   ),
//                 ],
//               ),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 AppGaps.hGap16,
//                 Text(
//                   dateText,
//                   style: const TextStyle(
//                       fontSize: 12, color: AppColors.black),
//                 ),
//               ],
//             )
//           ],
//         ));
//   }
// }
import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../core_widgets.dart';

/// disease list tile for my order tab page from home screen.
class MyDiseaseDescWidget extends StatelessWidget {
  final void Function()? onTap;
  final ImageProvider<Object> diseaseImage;
  final String diseaseName;
  final String dateText;
  final String riskAssessment;
  final String result;
  final String preciseDiagnosis;
  final String advice;
  const MyDiseaseDescWidget({
    Key? key,
    this.onTap,
    required this.diseaseImage,
    required this.diseaseName,
    required this.dateText,
    required this.riskAssessment,
    required this.result,
    required this.preciseDiagnosis,
    required this.advice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
      paddingValue: const EdgeInsets.all(16),
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  dateText,
                  style: const TextStyle(fontSize: 12, color: AppColors.black),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(image: diseaseImage, fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Risk Assessment: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    children: [
                      TextSpan(
                        text: riskAssessment,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Result: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    children: [
                      TextSpan(
                        text: result,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Precise Diagnosis: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    children: [
                      TextSpan(
                        text: preciseDiagnosis,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Advice: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    children: [
                      TextSpan(
                        text: advice,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
