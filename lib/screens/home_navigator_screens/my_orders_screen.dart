
// import 'package:flutter/material.dart';

// import '../../models/fake_data.dart';
// import '../../utils/constants/app_colors.dart';
// import '../../utils/constants/app_gaps.dart';
// import '../../widgets/core_widgets.dart';

// class MyOrdersScreen extends StatefulWidget {
//   const MyOrdersScreen({Key? key}) : super(key: key);

//   @override
//   State<MyOrdersScreen> createState() => _MyOrdersScreenState();
// }

// class _MyOrdersScreenState extends State<MyOrdersScreen> {
//   /// Currently selected tab index
//   int _selectedTabIndex = 0;

//   /// Tab titles
//   final List<String> _tabNames = [
//     'All orders',
//     'Pending',
//     'Delivered',
//     'Cancelled',
//     'Processing'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: false,
//           titleWidget: const Text('My orders')),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Top extra spaces
//             AppGaps.hGap10,
//             /* <---- Order status tabs ----> */
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: _tabNames.map((tabName) {
//                     final index = _tabNames.indexOf(tabName);
//                     return Padding(
//                       padding: const EdgeInsets.only(right: 8),
//                       child: TextButton(
//                           onPressed: () =>
//                               setState(() => _selectedTabIndex = index),
//                           style: TextButton.styleFrom(
//                               elevation: 10,
//                               shadowColor: _selectedTabIndex == index
//                                   ? AppColors.primaryColor.withOpacity(0.25)
//                                   : Colors.black.withOpacity(0.05),
//                               backgroundColor: _selectedTabIndex == index
//                                   ? AppColors.primaryColor
//                                   : Colors.white,
//                               primary: _selectedTabIndex == index
//                                   ? Colors.white
//                                   : AppColors.darkColor,
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 9,
//                                   horizontal:
//                                       _selectedTabIndex == index ? 24 : 20),
//                               shape: const RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(12)))),
//                           child: Text(
//                             tabName,
//                             style: const TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.w500),
//                           )),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ),
//             AppGaps.hGap8,
//             /* <---- Order list ----> */
//             Expanded(
//                 child: ListView.separated(
//               padding: const EdgeInsets.only(top: 16, bottom: 30),
//               separatorBuilder: (context, index) => AppGaps.hGap16,
//               itemCount: FakeData.myOrders.length,
//               itemBuilder: (context, index) {
//                 /// Single order
//                 final myOrder = FakeData.myOrders[index];
//                 return MyOrderProductWidget(
//                   onTap: () {
//                     // Tapping on it goes to order status screen
//                     Navigator.pushNamed(
//                         context, AppPageNames.orderStatusScreen);
//                   },
//                   productName: myOrder.name,
//                   productImage: myOrder.productImage,
//                   priceText: myOrder.price,
//                   orderStatusText: myOrder.orderStatus,
//                   dateText: myOrder.dateText,
//                 );
//               },
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
