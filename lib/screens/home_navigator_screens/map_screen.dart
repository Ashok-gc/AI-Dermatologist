
import 'package:flutter/material.dart';

import '../../widgets/core_widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  /// Width of small screen size
  @override
  Widget build(BuildContext context) {
    /// Get screen size
    return Scaffold(
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          hasBackButton: false,
          titleWidget: const Text('My Map')),
      /* <-------- Content --------> */
    );
  }
}
