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
//       paddingValue: const EdgeInsets.all(16),
//       onTap: onTap,
//       child: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   dateText,
//                   style: const TextStyle(fontSize: 12, color: AppColors.black),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Center(
//                 child: Container(
//                   height: 220,
//                   width: 220,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(20)),
//                     image: DecorationImage(image: diseaseImage, fit: BoxFit.cover),
//                   ),
//                 ),
//               ),
//               AppGaps.hGap10,
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Disease Name: ',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.black,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: diseaseName,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               AppGaps.hGap10,
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Risk Assessment: ',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.black,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: riskAssessment,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.normal,
//                           color: AppColors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               AppGaps.hGap10,
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Result: ',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.black,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: result,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.normal,
//                           color: AppColors.primaryColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               AppGaps.hGap10,
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Precise Diagnosis: ',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.black,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: preciseDiagnosis,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.normal,
//                           color: AppColors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               AppGaps.hGap10,
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Advice: ',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.black,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: advice,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.normal,
//                           color: AppColors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import '../core_widgets.dart';

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
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       IconButton(
              //         icon: SvgPicture.asset(
              //           AppAssetImages.deleteSVGLogoSolid,
              //           color: Colors.red,
              //         ),
              //         onPressed: () {
              //           showDialog(
              //             context: context,
              //             builder: (BuildContext context) {
              //               return Center(
              //                 child: AlertDialog(
              //                   title: const Text('Confirmation'),
              //                   content: const Text(
              //                       'Are you sure you want to delete?'),
              //                   buttonPadding: EdgeInsets.zero,
              //                   contentPadding: const EdgeInsets.symmetric(
              //                     vertical: 24.0,
              //                     horizontal: 20.0,
              //                   ),
              //                   actions: [
              //                     Padding(
              //                       padding: const EdgeInsets.only(right: 8.0),
              //                       child: TextButton(
              //                         style: TextButton.styleFrom(
              //                           shape: RoundedRectangleBorder(
              //                             borderRadius:
              //                                 BorderRadius.circular(30.0),
              //                           ),
              //                           backgroundColor: Colors.transparent,
              //                         ),
              //                         child: const Text(
              //                           'Cancel',
              //                           style: TextStyle(
              //                               color: AppColors.primaryColor),
              //                         ),
              //                         onPressed: () {
              //                           Navigator.of(context).pop();
              //                         },
              //                       ),
              //                     ),
              //                     Padding(
              //                       padding: const EdgeInsets.only(right: 8.0),
              //                       child: TextButton(
              //                         style: TextButton.styleFrom(
              //                           shape: RoundedRectangleBorder(
              //                             borderRadius:
              //                                 BorderRadius.circular(30.0),
              //                           ),
              //                           backgroundColor: AppColors.primaryColor,
              //                         ),
              //                         child: const Text(
              //                           'Delete',
              //                           style: TextStyle(color: Colors.white),
              //                         ),
              //                         onPressed: () {
              //                           // Perform the delete operation
              //                           // Add your delete logic here
              //                           Navigator.of(context).pop();
              //                         },
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               );
              //             },
              //           );
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  dateText,
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: diseaseImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              AppGaps.hGap10,
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Disease: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: diseaseName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppGaps.hGap10,
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Risk Assessment: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: riskAssessment,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppGaps.hGap10,
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Risk Assessment: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
              AppGaps.hGap10,
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Precise Diagnosis: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: preciseDiagnosis,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppGaps.hGap10,
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Advice: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: advice,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
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
