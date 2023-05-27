
// import 'package:flutter/material.dart';

// import '../../utils/constants/app_gaps.dart';
// import '../../utils/constants/app_page_names.dart';
// import '../../widgets/core_widgets.dart';

// class WishlistScreen extends StatefulWidget {
//   const WishlistScreen({Key? key}) : super(key: key);

//   @override
//   State<WishlistScreen> createState() => _WishlistScreenState();
// }

// class _WishlistScreenState extends State<WishlistScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: false,
//           titleWidget: const Text('Wishlist')),
//       /* <-------- Content --------> */
//       body: Container(
//           padding: const EdgeInsets.symmetric(
//               horizontal: AppGaps.screenPaddingValue),
//           /* <---- Cart item list ----> */
//           child: GridView.builder(
//             padding: const EdgeInsets.only(bottom: 20),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisSpacing: AppGaps.screenPaddingValue,
//                 mainAxisSpacing: AppGaps.screenPaddingValue,
//                 mainAxisExtent: 235,
//                 crossAxisCount: 2,
//                 childAspectRatio: 1),
//             itemCount: FakeData.products.length,
//             itemBuilder: (context, index) {
//               /// Per product data
//               final product = FakeData.products[index];
//               /* <---- Wishlist item widget ----> */
//               return CustomGridSingleItemWidget(
//                 onTap: () {
//                   Navigator.pushNamed(
//                       context, AppPageNames.productDetailsScreen,
//                       arguments: product);
//                 },
//                 backgroundColor: Colors.white,
//                 child: ProductGridSingleItemWidget(
//                   title: product.name,
//                   shortDescription: product.shortDescription,
//                   price: product.price,
//                   productImageProvider: product.productImage,
//                   isAddedToCart: product.isAddedToCart,
//                   isWishlisted: product.isWishlisted,
//                   onAddTap: () {
//                     setState(() {
//                       product.isAddedToCart = !product.isAddedToCart;
//                     });
//                   },
//                   onWishlistTap: () {
//                     setState(() {
//                       product.isWishlisted = !product.isWishlisted;
//                     });
//                   },
//                 ),
//               );
//             },
//           )),
//     );
//   }
// }
