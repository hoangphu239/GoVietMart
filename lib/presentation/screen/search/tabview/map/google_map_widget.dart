import 'dart:io';

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hunty/common/constants/image_constant.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/presentation/widgets/app_text.dart';
import 'package:hunty/theme/theme.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';


class GoogleMapWidget extends StatefulWidget {

  final List<LatLng> listLatLng;
  final double zoom;
  final bool zoomControlsEnabled, mapToolbarEnabled, myLocationButtonEnabled;

  const GoogleMapWidget({
    super.key,
    required this.listLatLng,
    this.zoom = 12,
    this.zoomControlsEnabled = true,
    this.mapToolbarEnabled = true,
    this.myLocationButtonEnabled = true,
  });

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  late GoogleMapController _mapController;
  late CustomInfoWindowController _customInfoWindowController;
  late Set<Marker> _markers;
  LatLngBounds? _bounds;

  @override
  void initState() {
    _markers = {};
    _customInfoWindowController = CustomInfoWindowController();
    super.initState();
    _loadMarkers();
  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  Future<void> _loadMarkers() async {
    int width = 0;
    int height = 0;

    if (Platform.isAndroid) {
      width = Sizes.dimen_80.toInt();
      height = Sizes.dimen_100.toInt();
    } else if (Platform.isIOS) {
      width = Sizes.dimen_110.toInt();
      height = Sizes.dimen_130.toInt();
    }

    ByteData data = await rootBundle.load(ImageConstant.marker);
    Uint8List bytes = data.buffer.asUint8List();
    ui.Codec codec = await ui.instantiateImageCodec(
      bytes,
      targetWidth: width,
      targetHeight: height,
    );
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    ui.Image resizedImage = frameInfo.image;
    ByteData? resizedBytes = await resizedImage.toByteData(format: ui.ImageByteFormat.png);
    BitmapDescriptor customIcon = BitmapDescriptor.fromBytes(resizedBytes!.buffer.asUint8List());

    Set<Marker> markers = {
      Marker(
        markerId: const MarkerId('home'),
        position: widget.listLatLng[0],
        icon: customIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
              _infoWindowWidget(), widget.listLatLng[0]);
        },
      ),
      Marker(
        markerId: const MarkerId('destination'),
        position: widget.listLatLng[1],
        icon: customIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
              _infoWindowWidget(), widget.listLatLng[1]);
        },
      ),
    };

    double minLat =
    markers.map((m) => m.position.latitude).reduce((a, b) => a < b ? a : b);
    double maxLat =
    markers.map((m) => m.position.latitude).reduce((a, b) => a > b ? a : b);
    double minLng = markers
        .map((m) => m.position.longitude)
        .reduce((a, b) => a < b ? a : b);
    double maxLng = markers
        .map((m) => m.position.longitude)
        .reduce((a, b) => a > b ? a : b);

    setState(() {
      _markers = markers;
      _bounds = LatLngBounds(
        southwest: LatLng(minLat, minLng),
        northeast: LatLng(maxLat, maxLng),
      );
    });
  }

  Widget _infoWindowWidget() {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(Sizes.dimen_4),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(Sizes.dimen_2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageConstant.logo_window_info,
                    width: Sizes.dimen_38,
                    height: Sizes.dimen_29,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: Sizes.dimen_8),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextBold(
                        text: 'Tommy Hilfiger',
                        maxLine: 1,
                        textSize: Sizes.dimen_12,
                        textColor: kColorTextPrimary,
                      ),
                      AppTextNormal(
                        text: 'Sale 30%',
                        maxLine: 1,
                        textSize: Sizes.dimen_11,
                        textColor: kColorTextPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Triangle.isosceles(
          edge: Edge.BOTTOM,
          child: Container(
            color: kColorWhite,
            width: Sizes.dimen_20,
            height: Sizes.dimen_10,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: widget.listLatLng[0],
            zoom: widget.zoom,
          ),
          markers: _markers,
          onTap: (position) {
            _customInfoWindowController.hideInfoWindow!();
          },
          onCameraMove: (position) {
            _customInfoWindowController.onCameraMove!();
          },
          onMapCreated: (GoogleMapController controller) async {
            _mapController = controller;
            _customInfoWindowController.googleMapController = controller;
            if(_bounds != null) {
              _mapController.animateCamera(
                CameraUpdate.newLatLngBounds(_bounds!, Sizes.dimen_50),
              );
            }
          },
          zoomControlsEnabled: widget.zoomControlsEnabled,
          mapToolbarEnabled: widget.mapToolbarEnabled,
            myLocationButtonEnabled: widget.myLocationButtonEnabled,
        ),
        CustomInfoWindow(
          controller: _customInfoWindowController,
          height: Sizes.dimen_55,
          width: Sizes.dimen_160,
        ),
      ],
    );
  }
}
