import 'package:flutter/material.dart';

import '../../utils/constants/app_constants.dart';
import '../../widgets/core_widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // GoogleMapController? mapController;
  // Set<Marker> markers = {};
  // LatLng myLocation = const LatLng(27.719374, 85.344079);

  // @override
  // void initState() {
  //   _checkUserPermission();
  //   markers.add(Marker(
  //     markerId: MarkerId(myLocation.toString()),
  //     position: myLocation,
  //     infoWindow: const InfoWindow(title: 'AgroLink', snippet: 'AgroLink'),
  //     icon: BitmapDescriptor.defaultMarker,
  //   ));
  //   super.initState();
  // }

  // _checkUserPermission() async {
  //   await UserPermission.requestLocationPermission();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        hasBackButton: false,
        titleWidget: const Text(''),
      ),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppGaps.hGap10,
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppGaps.screenPaddingValue,
                ),
                child: Text(
                  'Nearest Hospitals',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            AppGaps.hGap15,
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppGaps.screenPaddingValue,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.container,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                // child: GoogleMap(
                //   // mapType: MapType.normal,
                //   // initialCameraPosition: CameraPosition(
                //   //   target: myLocation,
                //   //   zoom: 14,
                //   // ),
                //   // onMapCreated: (GoogleMapController controller) {
                //   //   mapController = controller;
                //   // },
                //   // markers: markers,
                //   zoomGesturesEnabled: true,
                //   initialCameraPosition:
                //       CameraPo.sition(target: myLocation, zoom: 10),
                //   markers: markers,
                //   mapType: MapType.normal,
                //   onMapCreated: (controller) {
                //     setState(() {
                //       mapController = controller;
                //     });
                //   },
                // ),
              ),
            
        )],
        ),
      ),
    );
  }
}
