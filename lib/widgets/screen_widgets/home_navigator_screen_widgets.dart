import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_constants.dart';

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

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<CustomBottomNavigationBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;
    const notchMargin = 8.0;

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
                  SizedBox(
                    width: 56,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomNavigationBarOptions(
                              onCameraPressed: () {
                                // Handle open camera action
                                Navigator.pop(context);
                              },
                              onGalleryPressed: () {
                                // Handle open gallery action
                                Navigator.pop(context);
                              },
                              onCancelPressed: () {
                                // Handle cancel action
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
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

class CustomNavigationBarOptions extends StatelessWidget {
  final VoidCallback? onCameraPressed;
  final VoidCallback? onGalleryPressed;
  final VoidCallback? onCancelPressed;

  const CustomNavigationBarOptions({
    Key? key,
    this.onCameraPressed,
    this.onGalleryPressed,
    this.onCancelPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Center(child: Text('Open Camera')),
            onTap: onCameraPressed,
          ),
          ListTile(
            title: const Center(child: Text('Open Gallery')),
            onTap: onGalleryPressed,
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Center(child: Text('Cancel')),
            onTap: onCancelPressed,
          ),
        ],
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  top: -28,
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
  final String svgAssetIconName;
  final String labelText;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}
