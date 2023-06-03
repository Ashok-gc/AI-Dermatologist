// import 'package:flutter/material.dart';
// import '../../models/fake_models/my_history_model.dart';
// import '../../utils/constants/app_constants.dart';
// import '../../widgets/core_widgets.dart';

// class HistoryDiseaseDescScreen extends StatefulWidget {
//   /// The parameter variable argument holds product object to edit product.
//   final Object? disease;

//   const HistoryDiseaseDescScreen({Key? key, this.disease}) : super(key: key);

//   @override
//   State<HistoryDiseaseDescScreen> createState() => _HistoryDiseaseDescScreenState();
// }

// class _HistoryDiseaseDescScreenState extends State<HistoryDiseaseDescScreen> {
//   /// Current product data to show from parameter of this screen.
//   FakeMyHistoryModel _currentDisease = FakeMyHistoryModel(
//       name: 'AJ504 Green Airpod',
//       price: '23.00',
//       diseaseImage:
//           Image.asset('assets/images/demo_images/my_account_profile_picture.jpg').image,
//       dateText: '26 Dec, 2021');

//   /* <-------- Select current product index initially --------> */
//   void _setCurrentDisease(Object? argument) {
//     if (argument != null) {
//       if (argument is FakeMyHistoryModel) {
//         _currentDisease = argument;
//       }
//     }
//   }

//   /* <-------- Initial state --------> */
//   @override
//   void initState() {
//     _setCurrentDisease(widget.disease);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: true,
//           titleWidget: const Text('')),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget2(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.symmetric(
//                   horizontal: AppGaps.screenPaddingValue,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: AppColors.container3,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                   horizontal: AppGaps.screenPaddingValue,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: AppColors.black,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
//                 ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Top extra spaces
//                   AppGaps.hGap15,
//                   Center(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Stack(
//                           clipBehavior: Clip.none,
//                           children: [
//                             /* <---- Profile picture ----> */
//                             CircleAvatar(
//                               backgroundImage: _currentDisease.diseaseImage,
//                               radius: 64,
//                             ),                       
//                           ],
//                         ),
//                         AppGaps.hGap32,
//                         CustomHorizontalDashedLineWidget(
//                             color: AppColors.darkColor.withOpacity(0.1)),
//                         AppGaps.hGap32,
//                         Row(
//                           children: [
//                             Text('Item info',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .headlineMedium
//                                     ?.copyWith(color: AppColors.primaryColor)),
//                           ],
//                         ),
//                         AppGaps.hGap24,
//                         /* <---- Edit your name ----> */
//                         const CustomTextFormField(
//                             labelText: 'Item title',
//                             hintText: 'Item name here',
//                             prefixIcon: AppGaps.emptyGap),
//                         AppGaps.hGap24,
//                         /* <---- Edit your date of birth ----> */
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.max,
//                           children: const [
//                             Expanded(
//                               child: CustomTextFormField(
//                                   labelText: 'Item price',
//                                   hintText: '0.00',
//                                   prefixIcon: Text('\$')),
//                             ),
//                             AppGaps.wGap16,
//                             Expanded(
//                               child: CustomTextFormField(
//                                   labelText: 'Stock',
//                                   hintText: '0',
//                                   prefixIcon: AppGaps.emptyGap),
//                             ),
//                           ],
//                         ),
//                         AppGaps.hGap100,
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

import '../../models/fake_data.dart';
import '../../widgets/screen_widgets/alertdialogue_widgets.dart';
import '../../widgets/screen_widgets/my_disease_desc_screen_widgets.dart';

class HistoryDiseaseDescScreen extends StatefulWidget {
  const HistoryDiseaseDescScreen({Key? key}) : super(key: key);

  @override
  State<HistoryDiseaseDescScreen> createState() => _HistoryDiseaseDescScreenState();
}

class _HistoryDiseaseDescScreenState extends State<HistoryDiseaseDescScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: true,
        titleWidget: const Text(''),
      ),
      body: CustomScaffoldBodyWidget2(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppGaps.screenPaddingValue,
                ),
                child: Text(
                  'Disease Description',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            AppGaps.hGap15,
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppGaps.screenPaddingValue,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.container2,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  separatorBuilder: (context, index) => AppGaps.hGap16,
                  itemCount: FakeData.diesaseDescription.length,
                  itemBuilder: (context, index) {
                    final myDisease = FakeData.diesaseDescription[index];
                    return MyDiseaseDescWidget(
                      onTap: () {
                        Navigator.pushNamed(
                          context, AppPageNames.diseaseDescScreen);
                      },
                      diseaseName: myDisease.diseasename,
                      diseaseImage: myDisease.diseaseImage,
                      dateText: myDisease.dateText,
                      riskAssessment: myDisease.riskassessment,
                      result: myDisease.result,
                      preciseDiagnosis: myDisease.precisediagnosis,
                      advice: myDisease.advice,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
  backgroundColor: AppColors.container2,
  child: CustomStretchedButtonWidget2(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) {
          return CustomAlertDialog(
            title: 'Confirmation',
            message: 'Are you sure you want to delete the data?',
            onDeletePressed: () {
              // Add your delete logic here
              Navigator.of(context).pop();
            },
            onCancelPressed: () {
              Navigator.of(context).pop();
            },
          );
        },
      );
    },
    child: const Text('Delete'),
  ),
),

      // bottomNavigationBar: CustomScaffoldBottomBarWidget(
      //   backgroundColor: AppColors.container2,
      //   child: CustomStretchedButtonWidget2(
      //     onTap: () {
      //       showDialog(
      //         context: context,
      //         builder: (BuildContext context) {
      //           return AlertDialog(
      //             title: const Text('Confirmation'),
      //             content: const Text('Are you sure you want to delete?'),
      //             actions: [
      //               TextButton(
      //                 onPressed: () {
      //                   Navigator.of(context).pop();
      //                 },
      //                 child: const Text('Cancel'),
      //               ),
      //               TextButton(
      //                 onPressed: () {
      //                   // Add your delete logic here
      //                   Navigator.of(context).pop();
      //                 },
      //                 child: const Text('Delete'),
      //               ),
      //             ],
      //           );
      //         },
      //       );
      //     },
      //     child: const Text('Delete'),
      //   ),
      // ),
    );
  }
}
