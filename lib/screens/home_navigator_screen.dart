
import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';
import '../widgets/screen_widgets/home_navigator_screen_widgets.dart';
import 'home_navigator_screens/map_screen.dart';
import 'home_navigator_screens/home_screen.dart';
import 'home_navigator_screens/my_account_screen.dart';
import 'home_navigator_screens/my_history_screen.dart';


class HomeNavigatorScreen extends StatefulWidget {
  /// The parameter variable argument holds screen index number to show that tab
  /// screen initially.
  final Object? screenTabIndex;
  const HomeNavigatorScreen({Key? key, this.screenTabIndex}) : super(key: key);

  @override
  State<HomeNavigatorScreen> createState() => _HomeNavigatorScreenState();
}

class _HomeNavigatorScreenState extends State<HomeNavigatorScreen> {
  /// Current page index
  int _currentPageIndex = 0;

  /// Tabbed screen widget of selected tab
  Widget _nestedScreenWidget = const Scaffold();

  /* <-------- Select current page index initially --------> */
  void _setCurrentPageIndex(Object? argument) {
    if (argument != null) {
      if (argument is int) {
        _currentPageIndex = argument;
      }
    }
  }

  /* <-------- Select current tab screen --------> */
  void _setCurrentTab() {
    const int homeScreenIndex = 0;
    const int cartScreenIndex = 1;
    const int wishlistScreenIndex = 2;
    const int ordersScreenIndex = 3;
    const int accountScreenIndex = 4;
    switch (_currentPageIndex) {
      case homeScreenIndex:
        _nestedScreenWidget = const HomeScreen();
        break;
      case cartScreenIndex:
        _nestedScreenWidget = const MapScreen();
        break;
      case ordersScreenIndex:
        _nestedScreenWidget = const MyHistoryScreen();
        break;
      case accountScreenIndex:
        _nestedScreenWidget = const MyAccountScreen();
        break;
      default:
        // Invalid page index set tab to dashboard screen
        _nestedScreenWidget = const HomeScreen();
    }
  }

  /* <-------- Initial state --------> */
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
      /* <-------- Content --------> */
      body: _nestedScreenWidget,
      /* <-------- Bottom tab bar --------> */
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        child: CustomBottomNavigationBar(
          selectedIndex: _currentPageIndex,
          curve: Curves.easeOutBack,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          backgroundColor: Colors.white,
          itemCornerRadius: 10,
          showElevation: false, // use this to remove appBar's elevation
          onItemSelected: (selectedPageIndex) => setState(() {
            // Set current index and tab screen
            _currentPageIndex = selectedPageIndex;
            _setCurrentTab();
          }),
          items: [
            /* <---- 'Home' button ----> */
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.homeSVGLogoLine,
              labelText: 'Home',
              width: 100,
              inactiveColor: AppColors.bodyTextColor,
            ),
            /* <---- 'Cart' button ----> */
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.cartSVGLogoLine,
              labelText: 'Cart',
              badgeNumber: 4,
              width: 90,
              inactiveColor: AppColors.bodyTextColor,
            ),
            /* <---- 'Wishlist' button ----> */
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.heartSVGLogoLine,
              labelText: 'Wishlist',
              width: 110,
              badgeNumber: 4,
              inactiveColor: AppColors.bodyTextColor,
            ),
            /* <---- 'My Orders' button ----> */
            CustomBottomNavigationBarItem(
              svgAssetIconName: AppAssetImages.taskSVGLogoLine,
              labelText: 'My Orders',
              width: 120,
              badgeNumber: 9,
              inactiveColor: AppColors.bodyTextColor,
            ),
            /* <---- 'Account' button ----> */
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
