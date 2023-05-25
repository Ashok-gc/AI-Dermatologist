
import 'package:ai_dermatologist/screens/password_recovery_screens/password_recovery_enter_email_screen.dart';
import 'package:ai_dermatologist/screens/password_recovery_screens/password_recovery_select_screen.dart';
import 'package:ai_dermatologist/screens/password_recovery_screens/password_reset_link_sent_sucess_screen.dart';
import 'package:ai_dermatologist/screens/sigin_screens/signin_screen.dart';
import 'package:ai_dermatologist/screens/signup_screen/signup2.dart';
import 'package:flutter/material.dart';

import '../screens/intro_screen.dart';
import '../screens/signup_screen/signup_screen.dart';
import '../screens/splash_screen.dart';
import 'constants/app_page_names.dart';

/// This file contains app route generator
class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? argument = settings.arguments;
    switch (settings.name) {
      case AppPageNames.rootScreen:
      case AppPageNames.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppPageNames.introScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case AppPageNames.signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case AppPageNames.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case AppPageNames.passwordRecoverySelectScreen:
        return MaterialPageRoute(builder: (_) => const PasswordRecoverySelectScreen());
      case AppPageNames.resetPasswordEmailScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordEmailScreen());
      case AppPageNames.passwordResentLinkSentSucessScreen:
        return MaterialPageRoute(builder: (_) => const PasswordResentLinkSentSucessScreen());
      case AppPageNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case AppPageNames.signupPage:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      default:
        // Open this page if wrong route address used
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: SafeArea(child: Center(child: Text('Page not found')))));
    }
  }
}
