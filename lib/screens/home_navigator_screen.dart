
import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';
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
      backgroundColor: AppColors.shadeColor2,
      body: _nestedScreenWidget,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        child: CustomBottomNavigationBar(
          selectedIndex: _currentPageIndex,
          curve: Curves.easeOutBack,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          backgroundColor: AppColors.container3,
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
              width: 120,
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
    );
  }
}
