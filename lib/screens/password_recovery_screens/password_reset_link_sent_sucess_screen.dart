
import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';


class PasswordResentLinkSentSucessScreen extends StatelessWidget {
  const PasswordResentLinkSentSucessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        /* <-------- Content --------> */
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /* <---- Password change success illustration ----> */
                Image.asset(AppAssetImages.passwordChangeSuccessIllustration,
                    cacheHeight: (240 * 1.5).toInt(),
                    cacheWidth: (260 * 1.5).toInt(),
                    height: 240,
                    width: 260),
                AppGaps.hGap56,
                const HighlightAndDetailTextWidget(
                    isSpaceShorter: true,
                    slogan: 'Great! Email Link Sent',
                    subtitle:
                        'Don\'t worry! We\'ll let you know if there is any '
                        'problem with your account'),
                AppGaps.hGap30,
              ],
            ),
          ),
        ),
        /* <-------- Bottom bar button --------> */
        bottomNavigationBar: CustomScaffoldBottomBarWidget(
          child: CustomStretchedTextButtonWidget(
              buttonText: 'Continue',
              onTap: () {
                // Go to home screen
                Navigator.pushNamed(context, AppPageNames.signInScreen);
              }),
        ));
  }
}
