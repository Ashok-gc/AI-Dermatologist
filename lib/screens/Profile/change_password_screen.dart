
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../models/enums.dart';
// import '../../utils/constants/app_constants.dart';
// import '../../widgets/core_widgets.dart';
// import '../../widgets/screen_widgets/password_change_screen.dart';

// class CreateNewPasswordScreen extends StatefulWidget {
//   const CreateNewPasswordScreen({Key? key}) : super(key: key);

//   @override
//   State<CreateNewPasswordScreen> createState() =>
//       _CreateNewPasswordScreenState();
// }

// class _CreateNewPasswordScreenState
//     extends State<CreateNewPasswordScreen> {
//   /// Toggle value of hide new password
//   bool _toggleHideNewPassword = true;

//   /// Toggle value of hide confirm password
//   bool _toggleHideConfirmPassword = true;

//   /// Toggle value of over 5 characters requirement
//   bool _isPasswordOver5Characters = false;

//   /// Toggle value of at least 1 digit number
//   bool _isPasswordHasAtLeastSingleNumberDigit = false;

//   /// Create new password editing controller
//   TextEditingController _newPasswordEditingController = TextEditingController();

//   /// Password strong level value
//   PasswordStrongLevel _passwordStrongLevel = PasswordStrongLevel.none;

//   /// Find if any password text character has number digit.
//   bool _detectPasswordNumber(String passwordText) =>
//       passwordText.contains(RegExp(r'[0-9]'));

//   /// Check password
//   void _passwordCheck(String passwordText) {
//     _setPasswordStrongLevel(passwordText);
//     if (passwordText.length > 5) {
//       _isPasswordOver5Characters = true;
//     } else {
//       _isPasswordOver5Characters = false;
//     }
//     if (_detectPasswordNumber(passwordText)) {
//       _isPasswordHasAtLeastSingleNumberDigit = true;
//     } else {
//       _isPasswordHasAtLeastSingleNumberDigit = false;
//     }
//   }

//   /// Simple password strong level algorithm for new password field
//   void _setPasswordStrongLevel(String passwordText) {
//     final isNumberFound = _detectPasswordNumber(passwordText);
//     if (passwordText.isEmpty) {
//       _passwordStrongLevel = PasswordStrongLevel.none;
//     } else {
//       if (passwordText.length > 5 && isNumberFound) {
//         _passwordStrongLevel = PasswordStrongLevel.strong;
//         if (passwordText.length > 11 && isNumberFound) {
//           _passwordStrongLevel = PasswordStrongLevel.veryStrong;
//         }
//       } else if (passwordText.length > 5) {
//         _passwordStrongLevel = PasswordStrongLevel.normal;
//       } else {
//         _passwordStrongLevel = PasswordStrongLevel.weak;
//       }
//     }
//   }

//   /* <-------- Initial state --------> */
//   @override
//   void initState() {
//     _newPasswordEditingController = TextEditingController();
//     _newPasswordEditingController.addListener(() {
//       if (mounted) {
//         setState(() => _passwordCheck(_newPasswordEditingController.text));
//       }
//     });
//     super.initState();
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       /* <-------- Empty appbar with back button --------> */
//       appBar: CoreWidgets.appBarWidget(screenContext: context),
//       /* <-------- Content --------> */
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: AppGaps.screenPaddingValue),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Top extra spaces
//                 AppGaps.hGap80,
//                 /* <---- Verification icon and text ----> */
//                 Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: const [
//                       AppGaps.hGap20,
//                       HighlightAndDetailTextWidget2(
//                           slogan: 'Create new password',
//                           subtitle:
//                               'Please enter your new password and confirm password'),
//                     ],
//                   ),
//                 ),
//                 AppGaps.hGap40,
//                 /* <---- Enter current password text field ----> */
//                 CustomTextFormField(
//                   hasShadow: false,
//                   isPasswordTextField: _toggleHideConfirmPassword,
//                   labelText: 'Current password',
//                   hintText: '********',
//                   prefixIcon:
//                       SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
//                   suffixIcon: IconButton(
//                       padding: EdgeInsets.zero,
//                       visualDensity: const VisualDensity(
//                           horizontal: VisualDensity.minimumDensity,
//                           vertical: VisualDensity.minimumDensity),
//                       color: Colors.transparent,
//                       onPressed: () => setState(() =>
//                           _toggleHideConfirmPassword =
//                               !_toggleHideConfirmPassword),
//                       icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
//                           color: _toggleHideConfirmPassword
//                               ? AppColors.bodyTextColor
//                               : AppColors.primaryColor)),
//                 ),
//                 AppGaps.hGap24,
//                 /* <---- Create new password text field ----> */
//                 CustomTextFormField(
//                   controller: _newPasswordEditingController,
//                   hasShadow: false,
//                   isPasswordTextField: _toggleHideNewPassword,
//                   labelText: 'New password',
//                   hintText: '********',
//                   prefixIcon:
//                       SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
//                   suffixIcon: IconButton(
//                       padding: EdgeInsets.zero,
//                       visualDensity: const VisualDensity(
//                           horizontal: VisualDensity.minimumDensity,
//                           vertical: VisualDensity.minimumDensity),
//                       color: Colors.transparent,
//                       onPressed: () => setState(() =>
//                           _toggleHideNewPassword = !_toggleHideNewPassword),
//                       icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
//                           color: _toggleHideNewPassword
//                               ? AppColors.bodyTextColor
//                               : AppColors.primaryColor)),
//                 ),
//                 AppGaps.hGap24,
//                 /* <---- Create confirm password text field ----> */
//                 CustomTextFormField(
//                   hasShadow: false,
//                   isPasswordTextField: _toggleHideConfirmPassword,
//                   labelText: 'Confirm password',
//                   hintText: '********',
//                   prefixIcon:
//                       SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
//                   suffixIcon: IconButton(
//                       padding: EdgeInsets.zero,
//                       visualDensity: const VisualDensity(
//                           horizontal: VisualDensity.minimumDensity,
//                           vertical: VisualDensity.minimumDensity),
//                       color: Colors.transparent,
//                       onPressed: () => setState(() =>
//                           _toggleHideConfirmPassword =
//                               !_toggleHideConfirmPassword),
//                       icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
//                           color: _toggleHideConfirmPassword
//                               ? AppColors.bodyTextColor
//                               : AppColors.primaryColor)),
//                 ),
//                 AppGaps.hGap24,
//                 /* <---- Password requirement strong level columns ----> */
//                 Center(
//                     child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     /* <---- Password strong level widget ----> */
//                     PasswordStrongLevelWidget(
//                         currentPasswordStrongLevel: _passwordStrongLevel),
//                     AppGaps.hGap16,
//                     /* <---- Password 1st requirement ----> */
//                     Row(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SvgPicture.asset(AppAssetImages.tickRoundedSVGLogoSolid,
//                             color: _isPasswordOver5Characters
//                                 ? AppColors.successColor
//                                 : AppColors.darkColor.withOpacity(0.25)),
//                         AppGaps.wGap15,
//                         const Text('At least 6 characters',
//                             style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.black)),
//                       ],
//                     ),
//                     AppGaps.hGap16,
//                     /* <---- Password 2nd requirement ----> */
//                     Row(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SvgPicture.asset(AppAssetImages.tickRoundedSVGLogoSolid,
//                             color: _isPasswordHasAtLeastSingleNumberDigit
//                                 ? AppColors.successColor
//                                 : AppColors.darkColor.withOpacity(0.25)),
//                         AppGaps.wGap15,
//                         const Text('Contain at least 1 number',
//                             style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.black)),
//                       ],
//                     ),
//                   ],
//                 )),
//                 AppGaps.hGap30,
//               ],
//             ),
//           ),
//         ),
//       ),
//       /* <-------- Bottom bar of sign up text --------> */
//       bottomNavigationBar: CustomScaffoldBottomBarWidget(
//         child: CustomStretchedTextButtonWidget(
//             buttonText: 'Save password',
//             onTap: () {
//               // Go to password changed success screen.
//               // Navigator.pushNamed(
//               //     context, AppPageNames.passwordChangeSuccessScreen);
//             }),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/enums.dart';
import '../../utils/constants/app_constants.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/password_change_screen.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState
    extends State<CreateNewPasswordScreen> {
  /// Toggle value of hide new password
  bool _toggleHideNewPassword = true;

  /// Toggle value of hide confirm password
  bool _toggleHideConfirmPassword = true;

  /// Toggle value of over 5 characters requirement
  bool _isPasswordOver5Characters = false;

  /// Toggle value of at least 1 digit number
  bool _isPasswordHasAtLeastSingleNumberDigit = false;

  /// Create new password editing controller
  TextEditingController _newPasswordEditingController = TextEditingController();

  /// Password strong level value
  PasswordStrongLevel _passwordStrongLevel = PasswordStrongLevel.none;

  /// Find if any password text character has number digit.
  bool _detectPasswordNumber(String passwordText) =>
      passwordText.contains(RegExp(r'[0-9]'));

  /// Check password
  void _passwordCheck(String passwordText) {
    _setPasswordStrongLevel(passwordText);
    if (passwordText.length > 5) {
      _isPasswordOver5Characters = true;
    } else {
      _isPasswordOver5Characters = false;
    }
    if (_detectPasswordNumber(passwordText)) {
      _isPasswordHasAtLeastSingleNumberDigit = true;
    } else {
      _isPasswordHasAtLeastSingleNumberDigit = false;
    }
  }

  /// Simple password strong level algorithm for new password field
  void _setPasswordStrongLevel(String passwordText) {
    final isNumberFound = _detectPasswordNumber(passwordText);
    if (passwordText.isEmpty) {
      _passwordStrongLevel = PasswordStrongLevel.none;
    } else {
      if (passwordText.length > 5 && isNumberFound) {
        _passwordStrongLevel = PasswordStrongLevel.strong;
        if (passwordText.length > 11 && isNumberFound) {
          _passwordStrongLevel = PasswordStrongLevel.veryStrong;
        }
      } else if (passwordText.length > 5) {
        _passwordStrongLevel = PasswordStrongLevel.normal;
      } else {
        _passwordStrongLevel = PasswordStrongLevel.weak;
      }
    }
  }

  /* <-------- Initial state --------> */
  @override
  void initState() {
    _newPasswordEditingController = TextEditingController();
    _newPasswordEditingController.addListener(() {
      if (mounted) {
        setState(() => _passwordCheck(_newPasswordEditingController.text));
      }
    });
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Background color --------> */
      backgroundColor: AppColors.primaryColor,
      extendBodyBehindAppBar: true,
      /* <-------- Empty appbar with back button --------> */
      appBar: CoreWidgets.appBarWidget(screenContext: context),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: SingleChildScrollView(

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
                    children: const [
                      AppGaps.hGap50,
                      HighlightAndDetailTextWidget(
                          slogan: 'Create new password',
                          subtitle:
                              'Please enter your current password ,new password, and confirm password'),
                    ],
                  ),
                ),
                AppGaps.hGap40,
                /* <---- Enter current password text field ----> */
                Container(
                  padding: const EdgeInsets.symmetric(
                          horizontal: AppGaps.screenPaddingValue),
                      decoration: const BoxDecoration(
                      color: AppColors.container2,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                  child: Column(
                    children: [
                      AppGaps.hGap40,
                      CustomTextFormField(
                        hasShadow: false,
                        isPasswordTextField: _toggleHideConfirmPassword,
                        labelText: 'Current password',
                        hintText: '********',
                        prefixIcon:
                            SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
                        suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            color: Colors.transparent,
                            onPressed: () => setState(() =>
                                _toggleHideConfirmPassword =
                                    !_toggleHideConfirmPassword),
                            icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
                                color: _toggleHideConfirmPassword
                                    ? AppColors.bodyTextColor
                                    : AppColors.primaryColor)),
                      ),
                      AppGaps.hGap24,
                      /* <---- Create new password text field ----> */
                      CustomTextFormField(
                        controller: _newPasswordEditingController,
                        hasShadow: false,
                        isPasswordTextField: _toggleHideNewPassword,
                        labelText: 'New password',
                        hintText: '********',
                        prefixIcon:
                            SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
                        suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            color: Colors.transparent,
                            onPressed: () => setState(() =>
                                _toggleHideNewPassword = !_toggleHideNewPassword),
                            icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
                                color: _toggleHideNewPassword
                                    ? AppColors.bodyTextColor
                                    : AppColors.primaryColor)),
                      ),
                      AppGaps.hGap24,
                      /* <---- Create confirm password text field ----> */
                      CustomTextFormField(
                        hasShadow: false,
                        isPasswordTextField: _toggleHideConfirmPassword,
                        labelText: 'Confirm password',
                        hintText: '********',
                        prefixIcon:
                            SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
                        suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            color: Colors.transparent,
                            onPressed: () => setState(() =>
                                _toggleHideConfirmPassword =
                                    !_toggleHideConfirmPassword),
                            icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine,
                                color: _toggleHideConfirmPassword
                                    ? AppColors.bodyTextColor
                                    : AppColors.primaryColor)),
                      ),
                      AppGaps.hGap24,
                      /* <---- Password requirement strong level columns ----> */
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /* <---- Password strong level widget ----> */
                            PasswordStrongLevelWidget(
                                currentPasswordStrongLevel: _passwordStrongLevel),
                            AppGaps.hGap16,
                            /* <---- Password 1st requirement ----> */
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  AppAssetImages.tickRoundedSVGLogoSolid,
                                  color: _isPasswordOver5Characters
                                      ? AppColors.successColor
                                      : AppColors.darkColor.withOpacity(0.25),
                                ),
                                AppGaps.wGap15,
                                const Text(
                                  'At least 6 characters',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                            /* <---- Password 2nd requirement ----> */
                            AppGaps.hGap12,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  AppAssetImages.tickRoundedSVGLogoSolid,
                                  color: _isPasswordHasAtLeastSingleNumberDigit
                                      ? AppColors.successColor
                                      : AppColors.darkColor.withOpacity(0.25),
                                ),
                                AppGaps.wGap15,
                                const Text(
                                  'Contain at least 1 number',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                              
                            ),
                            AppGaps.hGap40,
                
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  
                ),
              ],
            ),
          ),
        ),
      
      /* <-------- Bottom bar of sign up text --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        backgroundColor: AppColors.container,
        child: CustomStretchedTextButtonWidget(
          buttonText: 'Save password',
          onTap: () {
            // Go to password changed success screen.
            // Navigator.pushNamed(
            //     context, AppPageNames.passwordChangeSuccessScreen);
          },
        ),
      ),
    );
  }
}
