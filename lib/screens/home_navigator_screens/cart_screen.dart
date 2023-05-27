
// import 'package:flutter/material.dart';

// import '../../models/fake_data.dart';
// import '../../utils/constants/app_gaps.dart';
// import '../../utils/constants/app_page_names.dart';
// import '../../widgets/core_widgets.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({Key? key}) : super(key: key);

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   /// Width of small screen size
//   final double _smallScreenSizeWidth = 350;
//   @override
//   Widget build(BuildContext context) {
//     /// Get screen size
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: false,
//           titleWidget: const Text('My cart')),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget(
//         /* <---- Cart item list ----> */
//         child: ListView.separated(
//           itemCount: FakeData.products.length,
//           padding: const EdgeInsets.only(bottom: 20),
//           separatorBuilder: (context, index) => AppGaps.hGap16,
//           /* <---- Cart per item widget ----> */
//           itemBuilder: (context, index) {
//             /// Single cart product
//             final cartProduct = FakeData.products[index];
//             return CartItemWidget(
//               index: index,
//               cartProduct: cartProduct,
//               onTap: () {
//                 Navigator.pushNamed(context, AppPageNames.productDetailsScreen,
//                     arguments: cartProduct);
//               },
//               onDeleteTap: () {},
//               onAddTap: () {
//                 setState(() {
//                   cartProduct.cartCount++;
//                 });
//               },
//               onRemoveTap: () {
//                 setState(() {
//                   if (cartProduct.cartCount > 1) {
//                     cartProduct.cartCount--;
//                   }
//                 });
//               },
//             );
//           },
//         ),
//       ),
//       /* <-------- Bottom bar of row of price and checkout button --------> */
//       bottomNavigationBar: CustomScaffoldBottomBarWidget(
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               r'Total: $65.00',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             AppGaps.wGap15,
//             /* <---- Checkout button ----> */
//             CustomLargeTextButtonWidget(
//               // If screen size is small, set small button size,
//               // else, set large button size.
//               isSmallScreen:
//                   screenSize.width < _smallScreenSizeWidth ? true : false,
//               text: 'Checkout',
//               textColor: Colors.white,
//               onTap: () {
//                 Navigator.pushNamed(context, AppPageNames.checkoutScreen);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
