import 'package:ai_dermatologist/models/enums.dart';
import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:ai_dermatologist/utils/constants/app_page_names.dart';
import 'package:ai_dermatologist/widgets/core_widgets.dart';
import 'package:ai_dermatologist/widgets/screen_widgets/password_recovery_select_screen_widgets.dart';
import 'package:flutter/material.dart';

class PasswordRecoverySelectScreen extends StatefulWidget {
  const PasswordRecoverySelectScreen({Key? key}) : super(key: key);

  @override
  State<PasswordRecoverySelectScreen> createState() =>
      _PasswordRecoverySelectScreenState();
}

class _PasswordRecoverySelectScreenState
    extends State<PasswordRecoverySelectScreen> {
  /// Reset password choice
  ResetPasswordSelectedChoice _currentlySelectedChoice =
      ResetPasswordSelectedChoice.none;
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
                // Top extra spaces
                AppGaps.hGap80,
                /* <---- Verification icon and text ----> */
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppGaps.hGap20,
                      Text('Reset your password',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall),
                      AppGaps.hGap16,
                      Text(
                          'Select below option to reset your password',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: AppColors.white,
                                  overflow: TextOverflow.clip)),
                    ],
                  ),
                ),
                AppGaps.hGap40,
                /* <---- Password recovery option select ----> */
                Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* <---- Email option ----> */
                    SelectResetPasswordWidget(
                      titleText: 'Send to your mail',
                      contentText:
                          'Password reset link has been sent to your mail',
                      isSelected: _currentlySelectedChoice ==
                          ResetPasswordSelectedChoice.mail,
                      currentSelectedRadioValue:
                          ResetPasswordSelectedChoice.mail,
                      groupRadioValue: _currentlySelectedChoice,
                      localSVGIconName: AppAssetImages.messageSVGLogoLine,
                      onTap: () => setState(() => _currentlySelectedChoice =
                          ResetPasswordSelectedChoice.mail),
                    ),
                  ],
                )),
                // Bottom extra spaces
                AppGaps.hGap30,
              ],
            ),
          ),
        ),
      ),
      /* <-------- Bottom bar of sign up text --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        child: CustomStretchedTextButtonWidget(
            buttonText: 'Continue',
            onTap: _currentlySelectedChoice == ResetPasswordSelectedChoice.none
                ? null
                : () {
                    // Go to password recovery enter phone number screen
                    Navigator.pushNamed(context,
                        AppPageNames.resetPasswordEmailScreen);
                  }),
      ),
    );
  }
}
