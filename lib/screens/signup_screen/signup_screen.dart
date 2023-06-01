import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_page_names.dart';
import '../../widgets/core_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  /// Toggle value of hide password
  bool _toggleHidePassword = true;

  /// Toggle value of agree terms and conditions
  bool _toggleAgreeTermsConditions = false;

  @override
  Widget build(BuildContext context) {
    /// Get screen size
    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Empty appbar with back button --------> */
      appBar: CoreWidgets.appBarWidget(screenContext: context),
      /* <-------- Content --------> */
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20), // Add desired spacing
                  const Center(
                    child: HighlightAndDetailTextWidget(
                      isSpaceShorter: true,
                      slogan: 'Getting Started',
                      subtitle: 'Hello there, sign up to continue',
                    ),
                  ),
              AppGaps.hGap24,
            Container(
              padding: const EdgeInsets.symmetric(
                      horizontal: AppGaps.screenPaddingValue),
                  decoration: const BoxDecoration(
                      color: AppColors.container,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppGaps.screenPaddingValue),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppGaps.hGap24,
                        /* <---- User full name text field ----> */
                        Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            /* <---- Expiration date text field ----> */
                            child: CustomTextFormField(
                              labelText: 'First Name',
                              prefixIcon:
                                  SvgPicture.asset(AppAssetImages.profileSVGLogoLine),
                              hintText: 'Ram',
                              textInputType: TextInputType.text,
                            ),
                          ),
                          AppGaps.wGap10,
                          Expanded(
                            /* <---- CVV text field ----> */
                            child: CustomTextFormField(
                              labelText: 'Last Name',
                              prefixIcon:
                                  SvgPicture.asset(AppAssetImages.profileSVGLogoLine),
                              hintText: 'Sharma',
                              textInputType: TextInputType.text,
                            ),
                          )
                        ]),
                        AppGaps.hGap24,
                        Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            /* <---- Expiration date text field ----> */
                            child: CustomTextFormField(
                              labelText: 'Date of Birth',
                              prefixIcon:
                                  SvgPicture.asset(AppAssetImages.calenderSVGLogoLine),
                              hintText: '2000/01/01',
                              textInputType: TextInputType.datetime,
                            ),
                          ),
                          AppGaps.wGap10,
                          Expanded(
                            /* <---- CVV text field ----> */
                            child: CustomTextFormField(
                              labelText: 'Gender',
                              prefixIcon:
                                  SvgPicture.asset(AppAssetImages.profileSVGLogoLine),
                              hintText: 'Male',
                              textInputType: TextInputType.text,
                            ),
                          )
                        ]),
                        AppGaps.hGap24,
                        /* <---- Email text field ----> */
                        CustomTextFormField(
                          labelText: 'Email address',
                          hintText: 'contact@gmail.com',
                          prefixIcon:
                              SvgPicture.asset(AppAssetImages.messageSVGLogoLine),
                        ),
                        AppGaps.hGap24,
                         /* <----  Phone number field ----> */
                        CustomTextFormField(
                          labelText: 'Phone Number',
                          hintText: '98XXXXXXXX',
                          textInputType: TextInputType.number,
                          prefixIcon:
                              SvgPicture.asset(AppAssetImages.phoneSVGLogoLine),
                        ),
                        AppGaps.hGap24,
                        /* <---- Password text field ----> */
                        CustomTextFormField(
                          isPasswordTextField: _toggleHidePassword,
                          labelText: 'Password',
                          hintText: '********',
                          prefixIcon:
                              SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
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
                        /* <---- Terms and conditions CheckBox ----> */
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: screenSize.width < 458
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Checkbox(
                                    value: _toggleAgreeTermsConditions,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    visualDensity: VisualDensity.compact,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5))),
                                    onChanged: (value) => setState(() =>
                                        _toggleAgreeTermsConditions = value ?? false)),
                              ),
                            ),
                            AppGaps.wGap16,
                            Expanded(
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  const Text('By signing up, I agree to the',
                                  
                          
                                  style: TextStyle(
                                    color: AppColors.black,
                                  ),),
                                  CustomTightTextButtonWidget(
                                      onTap: () {},
                                      child: Text(
                                        'Terms of service',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: AppColors.tertiaryColor),
                                      )),
                                  const Text(' and ',
                                  style: TextStyle(
                                    color: AppColors.black,
                                  ),),
                                  CustomTightTextButtonWidget(
                                      onTap: () {},
                                      child: Text(
                                        'Privacy policy',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: AppColors.tertiaryColor),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Bottom extra spaces
                        AppGaps.hGap10,
                      ],
                    ),
                  ),
                ),
              ),
              
            ),
          ],
        ),
      ),

      
      /* <-------- Bottom bar of sign up and sign in button --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        border: const Border(
          top: BorderSide(color: AppColors.primaryColor, width: 1.5)),
        backgroundColor: AppColors.container,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* <---- Sign up text button ----> */
            CustomStretchedTextButtonWidget(
                buttonText: 'Sign up',
                onTap: _toggleAgreeTermsConditions
                    ? () {
                        Navigator.pushNamed(
                            context, AppPageNames.signInScreen);
                      }
                    : null),
            AppGaps.hGap5,
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                    style: TextStyle(color: AppColors.black)),
                AppGaps.wGap5,
                /* <---- Sign in TextButton ----> */
                CustomTightTextButtonWidget(
                  onTap: () {
                   Navigator.pushNamed(
                            context, AppPageNames.signInScreen);
                  },
                  child: Text('Sign In',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.primaryColor)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
