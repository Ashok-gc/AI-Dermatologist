
import 'package:ai_dermatologist/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../screens/intro_screen.dart';
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
      default:
        // Open this page if wrong route address used
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                body: SafeArea(child: Center(child: Text('Page not found')))));
    }
  }
}
