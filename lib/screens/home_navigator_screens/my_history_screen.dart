
import 'package:flutter/material.dart';

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
