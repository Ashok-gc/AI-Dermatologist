import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:ai_dermatologist/widgets/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_page_names.dart';

class ResetPasswordEmailScreen extends StatefulWidget {
  const ResetPasswordEmailScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordEmailScreen> createState() =>
      _ResetPasswordEmailScreenState();
}

class _ResetPasswordEmailScreenState
    extends State<ResetPasswordEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      extendBodyBehindAppBar: true,
      /* <-------- Empty appbar with back button --------> */
      appBar: CoreWidgets.appBarWidget(screenContext: context),
      /* <-------- Content --------> */
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppGaps.screenPaddingValue),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HighlightAndDetailTextWidget(
                    isSpaceShorter: true,
                    slogan: 'Rest your password',
                    subtitle: 'Enter your email address to reset your password'),
                AppGaps.hGap24,
                /* <---- Email text field ----> */
                CustomTextFormField(
                  labelText: 'Email address',
                  hintText: 'yourlink@gmail.com',
                  prefixIcon:
                      SvgPicture.asset(AppAssetImages.messageSVGLogoLine),
                ),
                AppGaps.hGap24,

                /* <---- Sign in button ----> */
                CustomStretchedTextButtonWidget(
                    buttonText: 'Send reset link',
                    onTap: () {
                      // Goto home screen
                      Navigator.pushNamed(
                          context, AppPageNames.passwordResentLinkSentSucessScreen);
                    }),
                AppGaps.hGap24,
 
              ],
            ),
          ),
        ),
      ),
      /* <-------- Bottom bar of sign up text button --------> */
      
    );
  }
}
