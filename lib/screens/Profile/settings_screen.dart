import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/settings_screen_widgets.dart';
// import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  /// Toggle value of notification
  bool _toggleNotification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context, titleWidget: const Text('Settings')),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top extra spaces
              AppGaps.hGap15,
              Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
              AppGaps.hGap16,
              /* <---- 'Edit Profile' List Tile ----> */
              SettingsListTileWidget(
                  titleText: 'Edit Profile',
                  onTap: () {
                    // Tapping on it goes to edit my account screen
                    Navigator.pushNamed(
                        context, AppPageNames.editProfileScreen);
                  }),
              /* <---- Section space ----> */
              AppGaps.hGap32,
              Text('Application Setting',
                  style: Theme.of(context).textTheme.headlineMedium),
              AppGaps.hGap16,
              /* <---- 'Notification' List Tile ----> */
              SettingsListTileWidget(
                  titleText: 'Notification',
                  showRightArrow: false,
                  valueWidget: FlutterSwitch(
                    value: _toggleNotification,
                    width: 35,
                    height: 20,
                    toggleSize: 12,
                    activeColor: AppColors.primaryColor,
                    onToggle: (value) =>
                        setState(() => _toggleNotification = value),
                  ),
                  onTap: () => setState(
                      () => _toggleNotification = !_toggleNotification)),
              /* <---- Section space ----> */
              AppGaps.hGap32,
              Text('Security', style: Theme.of(context).textTheme.headlineMedium),
              AppGaps.hGap16,
              /* <---- 'Change Password' List Tile ----> */
              SettingsListTileWidget(titleText: 'Change Password', onTap: () {
                // Tapping on it goes to change password screen
                Navigator.pushNamed(context, AppPageNames.createNewPasswordScreen);
              }),
              // Bottom extra spaces
              AppGaps.hGap30,
            ],
          ),
        ),
      ),
    );
  }
}
