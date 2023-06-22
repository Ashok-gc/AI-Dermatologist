import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_constants.dart';

/// A beautiful and animated bottom navigation that paints a rounded shape
///
/// [selectedIndex] is required and must not be null.
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 14,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  /// The selected item is index. Changing this property will change and animate
  /// the item being selected. Defaults to zero.
  final int selectedIndex;

  /// The icon size of all items. Defaults to 24.
  final double iconSize;

  /// The background color of the navigation bar. It defaults to
  /// [Theme.bottomAppBarColor] if not provided.
  final Color? backgroundColor;

  /// Whether this navigation bar should show a elevation. Defaults to true.
  final bool showElevation;

  /// Use this to change the item's animation duration. Defaults to 270ms.
  final Duration animationDuration;

  /// Defines the appearance of the buttons that are displayed in the bottom
  /// navigation bar. This should have at least two items and five at most.
  final List<CustomBottomNavigationBarItem> items;

  /// A callback that will be called when a item is pressed.
  final ValueChanged<int> onItemSelected;

  /// Defines the alignment of the items.
  /// Defaults to [MainAxisAlignment.spaceBetween].
  final MainAxisAlignment mainAxisAlignment;

  /// The [items] corner radius, if not set, it defaults to 50.
  final double itemCornerRadius;

  /// Defines the bottom navigation bar height. Defaults to 56.
  final double containerHeight;

  /// Used to configure the animation curve. Defaults to [Curves.linear].
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;
    const notchMargin = 8.0; // Define the desired notch margin

    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: containerHeight,
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // First row: Two icons on the left
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: items.sublist(0, 2).map((item) {
                        final isSelected = items.indexOf(item) == selectedIndex;
                        return GestureDetector(
                          onTap: () => onItemSelected(items.indexOf(item)),
                          child: _ItemWidget(
                            item: item,
                            iconSize: iconSize,
                            isSelected: isSelected,
                            backgroundColor: bgColor,
                            itemCornerRadius: itemCornerRadius,
                            animationDuration: animationDuration,
                            badgeNumber: item.badgeNumber,
                            width: item.width,
                            curve: curve,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  // FAB icon in the middle
                  SizedBox(
                    width: 56, // Adjust the width of the FAB button as needed
                    child: FloatingActionButton(
                      onPressed: () {
                        // Handle FAB button press
                      },
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                  // Second row: Two icons on the right
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: items.sublist(2, 4).map((item) {
                        final isSelected = items.indexOf(item) == selectedIndex;
                        return GestureDetector(
                          onTap: () => onItemSelected(items.indexOf(item)),
                          child: _ItemWidget(
                            item: item,
                            iconSize: iconSize,
                            isSelected: isSelected,
                            backgroundColor: bgColor,
                            itemCornerRadius: itemCornerRadius,
                            animationDuration: animationDuration,
                            badgeNumber: item.badgeNumber,
                            width: item.width,
                            curve: curve,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final CustomBottomNavigationBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final double width;
  final Duration animationDuration;
  final int badgeNumber;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    required this.badgeNumber,
    required this.width,
    this.curve = Curves.linear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: badgeNumber < 1
          ? AnimatedContainer(
              width: isSelected ? width : 40,
              height: 40,
              duration: animationDuration,
              curve: curve,
              decoration: BoxDecoration(
                color: isSelected ? item.activeColor : backgroundColor,
                borderRadius: BorderRadius.circular(itemCornerRadius),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  height: 40,
                  width: isSelected ? 130 : 50,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Updated alignment to center
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Updated alignment to center
                    children: <Widget>[
                      SvgPicture.asset(
                        item.svgAssetIconName,
                        color: isSelected
                            ? Colors.white
                            : item.inactiveColor ?? item.activeColor,
                      ),
                      if (isSelected) AppGaps.wGap8,
                      if (isSelected)
                        Expanded(
                          child: Container(
                            child: DefaultTextStyle.merge(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              textAlign: item.textAlign,
                              child: Text(item.labelText),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            )
          : Stack(
              clipBehavior: Clip.none,
              children: [
                AnimatedContainer(
                  width: isSelected ? width : 45,
                  height: 40,
                  duration: animationDuration,
                  curve: curve,
                  decoration: BoxDecoration(
                    color: isSelected ? item.activeColor : backgroundColor,
                    borderRadius: BorderRadius.circular(itemCornerRadius),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    child: Container(
                      height: 40,
                      width: isSelected ? 130 : 50,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Updated alignment to center
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Updated alignment to center
                        children: <Widget>[
                          SvgPicture.asset(
                            item.svgAssetIconName,
                            color: isSelected
                                ? Colors.white
                                : item.inactiveColor ?? item.activeColor,
                          ),
                          if (isSelected) AppGaps.wGap8,
                          if (isSelected)
                            Expanded(
                              child: Container(
                                child: DefaultTextStyle.merge(
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 1,
                                  textAlign: item.textAlign,
                                  child: Text(item.labelText),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: -28, // Adjust the top value to position the FAB
                  child: Container(
                    alignment: Alignment.center,
                    height: 36,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Handle FAB button press
                      },
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

/// The [CustomBottomNavigationBar.items] definition.
class CustomBottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    this.badgeNumber = 0,
    this.width = 100,
    required this.svgAssetIconName,
    required this.labelText,
    this.activeColor = AppColors.primaryColor,
    this.textAlign,
    this.inactiveColor,
  });

  final double width;
  final int badgeNumber;

  /// Defines this item's icon which is placed in the right side of the [labelText].
  final String svgAssetIconName;

  /// Defines this item's label which placed in the left side of the [svgAssetIconName].
  final String labelText;

  /// The [svgAssetIconName] and [labelText] color defined when this item is selected. Defaults
  /// to [AppColors.primaryColor].
  final Color activeColor;

  /// The [svgAssetIconName] and [labelText] color defined when this item is not selected.
  final Color? inactiveColor;

  /// The alignment for the [labelText].
  ///
  /// This will take effect only if [labelText] it a [Text] widget.
  final TextAlign? textAlign;
}
