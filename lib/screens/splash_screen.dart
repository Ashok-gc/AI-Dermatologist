
import 'package:flutter/material.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_page_names.dart';
import '../utils/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _delayAndGotoNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushNamedAndRemoveUntil(
        context, AppPageNames.signupPage, (_) => false);
  }
  @override
  void initState() {
    _delayAndGotoNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Content --------> */
      backgroundColor: AppColors.primaryColor,
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset(AppAssetImages.splashScreenAbstract).image,
                fit: BoxFit.fitWidth)),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssetImages.logo, height: 150, width: 150),
              AppGaps.wGap10,
            ],
          ),
        ),
      ),
    );
  }
}
