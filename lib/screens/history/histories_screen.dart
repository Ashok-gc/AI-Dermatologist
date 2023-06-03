// import 'package:flutter/material.dart';
// import '../../models/fake_data.dart';
// import '../../utils/constants/app_constants.dart';
// import '../../widgets/core_widgets.dart';
// import '../../widgets/screen_widgets/my_history_screen_widgets.dart';

// class MyHistoryScreen extends StatefulWidget {
//   const MyHistoryScreen({Key? key}) : super(key: key);

//   @override
//   State<MyHistoryScreen> createState() => _MyHistoryScreenState();
// }

// class _MyHistoryScreenState extends State<MyHistoryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,

//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: true,
//           titleWidget: const Text('My History')),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget2(
        
//         child: Container(
//           padding: const EdgeInsets.symmetric(
//               horizontal: AppGaps.screenPaddingValue),
//           decoration: const BoxDecoration(
//               color: AppColors.container,
//               borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AppGaps.hGap10,
//               /* <---- Disease list ----> */
//               Expanded(
//                   child: ListView.separated(
//                 padding: const EdgeInsets.only(top: 16, bottom: 30),
//                 separatorBuilder: (context, index) => AppGaps.hGap16,
//                 itemCount: FakeData.myHistorys.length,
//                 itemBuilder: (context, index) {
//                   /// Single order
//                   final myDisease = FakeData.myHistorys[index];
//                   return MyHistoryWidget(
//                     onTap: () {
//                       // Tapping on it goes to order status screen
//                       // Navigator.pushNamed(
//                       //     context, AppPageNames.orderStatusScreen);
//                     },
//                     diseaseName: myDisease.name,
//                     diseaseImage: myDisease.diseaseImage,
//                     dateText: myDisease.dateText,
//                   );
//                 },
//               )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../models/fake_data.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/my_history_screen_widgets.dart';

class MyHistoryScreen extends StatefulWidget {
  const MyHistoryScreen({Key? key}) : super(key: key);

  @override
  State<MyHistoryScreen> createState() => _MyHistoryScreenState();
}

class _MyHistoryScreenState extends State<MyHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: true,
        titleWidget: const Text(''),
      ),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.hGap20,
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppGaps.screenPaddingValue,
                ),
                child: Text(
                  'History / Front',
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
                  itemCount: FakeData.myHistorys.length,
                  itemBuilder: (context, index) {
                    /// Single order
                    final myDisease = FakeData.myHistorys[index];
                    return MyHistoryWidget(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppPageNames.historyDiseaseDescScreen);
                      },
                      diseaseName: myDisease.name,
                      diseaseImage: myDisease.diseaseImage,
                      dateText: myDisease.dateText,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

