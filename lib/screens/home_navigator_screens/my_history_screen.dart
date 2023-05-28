
import 'package:flutter/material.dart';

import '../../models/fake_data.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../widgets/core_widgets.dart';

class MyHistoryScreen extends StatefulWidget {
  const MyHistoryScreen({Key? key}) : super(key: key);

  @override
  State<MyHistoryScreen> createState() => _MyHistoryScreenState();
}

class _MyHistoryScreenState extends State<MyHistoryScreen> {
  /// Currently selected tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          hasBackButton: false,
          titleWidget: const Text('My orders')),
      /* <-------- Content --------> */

    );
  }
}
