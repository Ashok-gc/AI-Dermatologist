// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../utils/constants/app_colors.dart';
// import '../../utils/constants/app_images.dart';

// class CustomPopupMenuEntry extends PopupMenuEntry<int> {
//   final Widget child;

//   CustomPopupMenuEntry({required this.child});

//   @override
//   double get height => 40;

//   @override
//   bool represents(int? value) => false;

//   @override
//   PopupMenuItemState<int, PopupMenuEntry<int>> createState() => _CustomPopupMenuEntryState();
// }

// class _CustomPopupMenuEntryState extends PopupMenuItemState<int, CustomPopupMenuEntry> {
//   @override
//   void handleTap() {
//     handlePopupMenuSelection(widget.value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.container2,
//       child: Row(
//         children: [
//           widget.child,
//         ],
//       ),
//     );
//   }
// }

// void showPopupMenu(BuildContext context) {
//   final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
//   final Offset offset = overlay.localToGlobal(Offset.zero);

//   showMenu<int>(
//     context: context,
//     position: RelativeRect.fromLTRB(200, offset.dy + 400, 0, 0),
//     items: [
//       CustomPopupMenuEntry(
//         child: Row(
//           children: [
//             SvgPicture.asset(
//               AppAssetImages.homeSVGLogoLine,
//               color: AppColors.primaryColor,
//               height: 18,
//               width: 18,
//             ),
//             const SizedBox(width: 16),
//             Text(
//               'Home',
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//       CustomPopupMenuEntry(
//         child: Row(
//           children: [
//             SvgPicture.asset(
//               AppAssetImages.calenderSVGLogoLine,
//               color: AppColors.primaryColor,
//               height: 18,
//               width: 18,
//             ),
//             const SizedBox(width: 16),
//             Text(
//               'Office',
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(height: 10),
//       PopupMenuItem<int>(
//         value: 2,
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         textStyle: Theme.of(context)
//             .textTheme
//             .bodyMedium
//             ?.copyWith(color: AppColors.bodyTextColor),
//         child: Row(
//           children: [
//             SvgPicture.asset(
//               AppAssetImages.calenderSVGLogoLine,
//               color: AppColors.primaryColor,
//               height: 18,
//               width: 18,
//             ),
//             const SizedBox(width: 16),
//             Text(
//               'Other',
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     ],
//     elevation: 18,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//     color: AppColors.container2,
//     // captureInheritedThemes: false,
//   ).then((value) {
//     // Handle popup menu selection
//     if (value != null) {
//       handlePopupMenuSelection(value);
//     }
//   });
// }
