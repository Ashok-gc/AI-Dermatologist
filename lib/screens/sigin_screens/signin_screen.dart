import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  /// Toggle value of remember me
  bool _toggleRememberLogin = false;

  /// Toggle value of hide password
  bool _toggleHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Empty appbar --------> */
      backgroundColor: AppColors.primaryColor,
      appBar: CoreWidgets.appBarWidget(
          screenContext: context, hasBackButton: false),
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
                    slogan: 'Welcome to AI Dermatologist',
                    subtitle: 'Hello there, sign in to continue'),
                AppGaps.hGap24,
                /* <---- Email text field ----> */
                CustomTextFormField(
                  labelText: 'Email address',
                  hintText: 'contact@gmail.com',
                  prefixIcon:
                      SvgPicture.asset(AppAssetImages.messageSVGLogoLine),
                ),
                AppGaps.hGap24,
                /* <---- Password text field ----> */
                CustomTextFormField(
                  hasShadow: false,
                  isPasswordTextField: _toggleHidePassword,
                  labelText: 'Password',
                  hintText: '********',
                  prefixIcon:
                      SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
                  /* <---- Password hide icon button ----> */
                  suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      color: Colors.transparent,
                      onPressed: () => setState(
                          () => _toggleHidePassword = !_toggleHidePassword),
                      icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
                          color: _toggleHidePassword
                              ? AppColors.bodyTextColor
                              : AppColors.primaryColor)),
                ),
                AppGaps.hGap24,
                /* <---- Remember me, forget password row ----> */
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /* <---- Remember me toggle button ----> */
                        FlutterSwitch(
                          value: _toggleRememberLogin,
                          width: 35,
                          height: 20,
                          toggleSize: 12,
                          activeColor: AppColors.successColor,
                          onToggle: (value) =>
                              setState(() => _toggleRememberLogin = value),
                        ),
                        AppGaps.wGap8,
                        Text('Remember me',
                            style: TextStyle(
                                color: _toggleRememberLogin
                                    ? AppColors.successColor
                                    : AppColors.white)),
                      ],
                    ),
                    /* <---- Forget password? text button ----> */
                    CustomTightTextButtonWidget(
                      child: Text('Forgot password?',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.alertColor)),
                      onTap: () {
                        // Goto verification method selection screen.
                        Navigator.pushNamed(
                            context, AppPageNames.passwordRecoverySelectScreen);
                      },
                    ),
                  ],
                ),
                AppGaps.hGap25,
                /* <---- Sign in button ----> */
                CustomStretchedTextButtonWidget(
                    buttonText: 'Sign in',
                    onTap: () {
                      // Goto home screen
                      // Navigator.pushNamed(
                      //     context, AppPageNames.homeNavigatorScreen);
                    }),
                AppGaps.hGap24,
                Center(
                    child: Text('Or Sign in with social account',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.white,
                            ))),
                AppGaps.hGap24,
                /* <---- Social buttons row ----> */
                Center(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* <---- Google icon button ----> */
                    CustomIconButtonWidget(
                        border: Border.all(color: AppColors.lineShapeColor),
                        child:
                            SvgPicture.asset(AppAssetImages.googleSVGLogoColor),
                        onTap: () {})
              ])),
                // Bottom extra spaces
                AppGaps.hGap20,
              ],
            ),
          ),
        ),
      ),
      /* <-------- Bottom bar of sign up text button --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?',
                style: TextStyle(color: AppColors.white)),
            AppGaps.wGap5,
            /* <---- Sign up TextButton ----> */
            CustomTightTextButtonWidget(
              onTap: () {
                // Goto sign up screen.
                Navigator.pushNamed(context, AppPageNames.signUpScreen);
              },
              child: Text('Sign up',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.successColor)),
            )
          ],
        ),
      ),
    );
  }
}
