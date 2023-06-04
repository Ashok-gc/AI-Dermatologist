import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/screen_widgets/home/back_body_widget.dart';
import '../../widgets/screen_widgets/home/front_body_widget.dart';
import '../../utils/constants/app_constants.dart';

class HomeScreenn extends StatefulWidget {
  const HomeScreenn({Key? key}) : super(key: key);

  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
  bool _showFrontBody = true;

  void _toggleBody() {
    setState(() {
      _showFrontBody = !_showFrontBody;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: _showFrontBody ? const FrontBodyWidget() : const BackBodyWidget(),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: GestureDetector(
              onTap: _toggleBody,
              child: Container(
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssetImages.downarrowSVGLogoSolid,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}