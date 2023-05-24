
import 'package:ai_dermatologist/utils/app_routes.dart';
import 'package:ai_dermatologist/utils/constants/app_page_names.dart';
import 'package:ai_dermatologist/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AiDermatologist());
}

class AiDermatologist extends StatelessWidget {
  const AiDermatologist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ai Dermatologist',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouteGenerator.generateRoute,
      initialRoute: AppPageNames.rootScreen,
      theme: AppThemeData.appThemeData,
    );
  }
}
