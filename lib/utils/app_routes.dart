
import 'package:ai_dermatologist/screens/Profile/edit_my_account_screen.dart';
import 'package:ai_dermatologist/screens/history/histories_screen.dart';
import 'package:ai_dermatologist/screens/home_navigator_screen.dart';
import 'package:ai_dermatologist/screens/home_navigator_screens/home_screen.dart';
import 'package:ai_dermatologist/screens/home_navigator_screens/map_screen.dart';
import 'package:ai_dermatologist/screens/home_navigator_screens/my_account_screen.dart';
import 'package:ai_dermatologist/screens/home_navigator_screens/history_screen.dart';
import 'package:ai_dermatologist/screens/password_recovery_screens/password_recovery_enter_email_screen.dart';
import 'package:ai_dermatologist/screens/password_recovery_screens/password_recovery_select_screen.dart';
import 'package:ai_dermatologist/screens/password_recovery_screens/password_reset_link_sent_sucess_screen.dart';
import 'package:ai_dermatologist/screens/Profile/settings_screen.dart';
import 'package:ai_dermatologist/screens/sigin_screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../screens/Profile/change_password_screen.dart';
import '../screens/faq/faq_questions_screen.dart';
import '../screens/history/disease_description_screen.dart';
import '../screens/history/history_disease_desc_screen.dart';
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
      case AppPageNames.homeNavigatorScreen:
        return MaterialPageRoute(builder: (_) => const HomeNavigatorScreen());
      case AppPageNames.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppPageNames.mapScreen:
        return MaterialPageRoute(builder: (_) => const MapScreen());    
      case AppPageNames.myAccountScreen:
        return MaterialPageRoute(builder: (_) => const MyAccountScreen());  
      case AppPageNames.historiesScreen:
        return MaterialPageRoute(builder: (_) => const HistoryScreen());
      case AppPageNames.settingScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case AppPageNames.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditMyAccountScreen());
      case AppPageNames.createNewPasswordScreen:
        return MaterialPageRoute(builder: (_) => const CreateNewPasswordScreen());
      case AppPageNames.myHistoriesScreen:
        return MaterialPageRoute(builder: (_) => const MyHistoryScreen());
      case AppPageNames.historyDiseaseDescScreen:
        return MaterialPageRoute(builder: (_) => const HistoryDiseaseDescScreen());
      case AppPageNames.diseaseDescScreen:
        return MaterialPageRoute(builder: (_) => const DiseaseDescriptionScreen());
      case AppPageNames.faqScreen:
        return MaterialPageRoute(builder: (_) => const FAQScreen());
      default:
        // Open this page if wrong route address used
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: SafeArea(child: Center(child: Text('Page not found')))));
    }
  }
}
