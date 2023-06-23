
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants/app_constants.dart';
import '../widgets/core_widgets.dart';
import '../widgets/screen_widgets/home_navigator_screen_widgets.dart';
import 'home_navigator_screens/map_screen.dart';
import 'home_navigator_screens/home_screen.dart';
import 'home_navigator_screens/my_account_screen.dart';
import 'home_navigator_screens/history_screen.dart';


class HomeNavigatorScreen extends StatefulWidget {
  final Object? screenTabIndex;
  const HomeNavigatorScreen({Key? key, this.screenTabIndex}) : super(key: key);

  @override
  State<HomeNavigatorScreen> createState() => _HomeNavigatorScreenState();
}

class _HomeNavigatorScreenState extends State<HomeNavigatorScreen> {
  int _currentPageIndex = 0;
  Widget _nestedScreenWidget = const Scaffold();

  void _setCurrentPageIndex(Object? argument) {
    if (argument != null) {
      if (argument is int) {
        _currentPageIndex = argument;
      }
    }
  }

  void _setCurrentTab() {
    const int homeScreenIndex = 0;
    const int mapScreenIndex = 1;
    const int historyScreenIndex = 2;
    const int accountScreenIndex = 3;
    switch (_currentPageIndex) {
      case homeScreenIndex:
        _nestedScreenWidget = const HomeScreen();
        break;
      case mapScreenIndex:
        _nestedScreenWidget = const MapScreen();
        break;
      case historyScreenIndex:
        _nestedScreenWidget = const HistoryScreen();
        break;
      case accountScreenIndex:
        _nestedScreenWidget = const MyAccountScreen();
        break;
      default:
        _nestedScreenWidget = const HomeScreen();
    }
  }

  @override
  void initState() {
    _setCurrentPageIndex(widget.screenTabIndex);
    _setCurrentTab();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.container2,
      body: _nestedScreenWidget,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        child: CustomBottomNavigationBar(
          selectedIndex: _currentPageIndex,
          curve: Curves.easeOutBack,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // backgroundColor: const Color.fromARGB(229, 242, 245, 252),
          itemCornerRadius: 10,
          showElevation: false,
          onItemSelected: (selectedPageIndex) => setState(() {
            _currentPageIndex = selectedPageIndex;
            _setCurrentTab();
          }),
          items: [
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.homeSVGLogoLine,
              labelText: 'Home',
              width: 100,
              inactiveColor: AppColors.bodyTextColor,
            ),
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.mapSVGLogoLine,
              labelText: 'Map',
              width: 90,
              inactiveColor: AppColors.bodyTextColor,
            ),

            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.taskSVGLogoLine,
              labelText: 'History',
              width: 100,
              inactiveColor: AppColors.bodyTextColor,
            ),
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.profileSVGLogoLine,
              labelText: 'Account',
              width: 110,
              inactiveColor: AppColors.bodyTextColor,
            ),
          ],
        ),
      ),

      floatingActionButton: Positioned(
        bottom: 28,
        child: CustomIconButtonWidget2(
          onTap: () {
            // Go to add product screen
            // Navigator.pushNamed(context, AppPageNames.addProductScreen);
          },
          fixedSize: const Size(63, 63),
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            AppAssetImages.cameraSVGLogoSolid,
            height: 32,
            width: 32,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      // Set the FloatingActionButton location and shape
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
    );
  }
}
