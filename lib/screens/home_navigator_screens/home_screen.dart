
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../utils/constants/app_colors.dart';
// import '../../utils/constants/app_gaps.dart';
// import '../../utils/constants/app_images.dart';
// import '../../widgets/core_widgets.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /* <-------- Appbar --------> */
//       appBar: CoreWidgets.appBarWidget(
//           screenContext: context,
//           hasBackButton: false,
//           /* <---- Appbar left side widgets ----> */
//           titleWidget: Row(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 AppGaps.wGap20,
//                 /* <---- Location icon button ----> */
//                 CustomIconButtonWidget(
//                     hasShadow: true,
//                     child: SvgPicture.asset(AppAssetImages.locationSVGLogoLine,
//                         color: AppColors.darkColor)),
//                 AppGaps.wGap15,
//                 Text('Home', style: Theme.of(context).textTheme.button),
//                 /* <---- Location dropdown menu button ----> */
//                 PopupMenuButton<int>(
//                     padding: const EdgeInsets.only(right: 20, top: 3),
//                     position: PopupMenuPosition.under,
//                     shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(14))),
//                     icon: SvgPicture.asset(
//                       AppAssetImages.arrowDownSVGLogoLine,
//                       color: AppColors.primaryColor,
//                       height: 16,
//                       width: 16,
//                     ),
//                     onSelected: (value) {
//                       switch (value) {
//                         case 3:
//                           Navigator.pushNamed(
//                               context, AppPageNames.deliverySetLocationScreen);
//                           break;
//                         default:
//                       }
//                     },
//                     itemBuilder: (context) => [
//                           PopupMenuItem<int>(
//                             value: 0,
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             textStyle: Theme.of(context)
//                                 .textTheme
//                                 .bodyText2
//                                 ?.copyWith(color: AppColors.bodyTextColor),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(AppAssetImages.homeSVGLogoLine,
//                                     color: AppColors.primaryColor,
//                                     height: 18,
//                                     width: 18),
//                                 AppGaps.wGap16,
//                                 Text(
//                                   'Home',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .caption
//                                       ?.copyWith(fontWeight: FontWeight.w500),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           PopupMenuItem<int>(
//                             value: 1,
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             textStyle: Theme.of(context)
//                                 .textTheme
//                                 .bodyText2
//                                 ?.copyWith(color: AppColors.bodyTextColor),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(
//                                     AppAssetImages.buildingsSVGLogoLine,
//                                     color: AppColors.primaryColor,
//                                     height: 18,
//                                     width: 18),
//                                 AppGaps.wGap16,
//                                 Text(
//                                   'Office',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .caption
//                                       ?.copyWith(fontWeight: FontWeight.w500),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           PopupMenuItem<int>(
//                             value: 2,
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             textStyle: Theme.of(context)
//                                 .textTheme
//                                 .bodyText2
//                                 ?.copyWith(color: AppColors.bodyTextColor),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(
//                                     AppAssetImages.building2SVGLogoLine,
//                                     color: AppColors.primaryColor,
//                                     height: 18,
//                                     width: 18),
//                                 AppGaps.wGap16,
//                                 Text(
//                                   'Other',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .caption
//                                       ?.copyWith(fontWeight: FontWeight.w500),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           PopupMenuItem<int>(
//                             value: 3,
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             textStyle: Theme.of(context)
//                                 .textTheme
//                                 .bodyText2
//                                 ?.copyWith(color: AppColors.bodyTextColor),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(AppAssetImages.mapSVGLogoLine,
//                                     color: AppColors.primaryColor,
//                                     height: 18,
//                                     width: 18),
//                                 AppGaps.wGap16,
//                                 Text(
//                                   'Set location',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .caption
//                                       ?.copyWith(fontWeight: FontWeight.w500),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ])
//               ]),
//           /* <---- Appbar right side widgets ----> */
//           actions: [
//             Center(
//               /* <---- Notification icon button ----> */
//               child: CustomIconButtonWidget(
//                   onTap: () {
//                     Navigator.pushNamed(
//                         context, AppPageNames.notificationsScreen);
//                   },
//                   hasShadow: true,
//                   child: Stack(
//                     children: [
//                       SvgPicture.asset(AppAssetImages.notificationSVGLogoLine,
//                           height: 18, width: 18, color: AppColors.darkColor),
//                       Positioned(
//                         top: 1,
//                         right: 0,
//                         child: Container(
//                           height: 6,
//                           width: 6,
//                           decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.alertColor),
//                         ),
//                       )
//                     ],
//                   )),
//             ),
//             // Right side spaces
//             AppGaps.wGap20,
//           ]),
//       /* <-------- Content --------> */
//       body: CustomScaffoldBodyWidget(
//         child: CustomScrollView(
//           slivers: [
//             /* <---- Top extra spaces ----> */
//             const SliverToBoxAdapter(child: AppGaps.hGap10),
//             /* <---- Search and filter button row ----> */
//             SliverToBoxAdapter(
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   /* <---- Search text field ----> */
//                   Expanded(
//                       child: CustomTextFormField(
//                           hasShadow: true,
//                           hintText: 'Search item or store',
//                           prefixIcon: SvgPicture.asset(
//                               AppAssetImages.searchSVGLogoLine,
//                               color: AppColors.primaryColor))),
//                   AppGaps.wGap8,
//                   /* <---- Filter icon button ----> */
//                   CustomIconButtonWidget(
//                     fixedSize: const Size(60, 60),
//                     hasShadow: true,
//                     backgroundColor: AppColors.primaryColor,
//                     child: SvgPicture.asset(AppAssetImages.filterSVGLogoLine,
//                         color: Colors.white),
//                     onTap: () {},
//                   ),
//                 ],
//               ),
//             ),
//             const SliverToBoxAdapter(child: AppGaps.hGap24),
//             SliverToBoxAdapter(
//                 child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: const [
//                 Text(
//                   'Got delivered',
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 AppGaps.wGap10,
//                 Text('everything you need',
//                     style: TextStyle(color: AppColors.bodyTextColor)),
//               ],
//             )),
//             const SliverToBoxAdapter(child: AppGaps.hGap16),
//             /* <---- Product categories grid list ----> */
//             SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisSpacing: AppGaps.screenPaddingValue,
//                   mainAxisSpacing: AppGaps.screenPaddingValue,
//                   mainAxisExtent: 235,
//                   crossAxisCount: 2,
//                   childAspectRatio: 1),
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 /// Per Category data
//                 final board = FakeData.fakeHomeProductCategories[index];
//                 /* <---- Product category item widget ----> */
//                 return CustomGridSingleItemWidget(
//                   onTap: () {
//                     Navigator.pushNamed(context, AppPageNames.productsScreen,
//                         arguments: board.title);
//                   },
//                   child: ProductCategoryGridSingleItemWidget(
//                     title: board.title,
//                     itemNumber: board.itemNumber,
//                     categoryImageProvider: board.categoryImage,
//                   ),
//                 );
//               }, childCount: FakeData.fakeHomeProductCategories.length),
//             ),
//             /* <---- Bottom extra spaces ----> */
//             const SliverToBoxAdapter(child: AppGaps.hGap30),
//           ],
//         ),
//       ),
//     );
//   }
// }
