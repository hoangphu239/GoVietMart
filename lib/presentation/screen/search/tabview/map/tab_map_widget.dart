import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/screen/search/tabview/map/filter_distance_widget.dart';
import 'package:hunty/presentation/screen/search/tabview/map/google_map_widget.dart';
import 'package:hunty/presentation/screen/search/tabview/promotion/section_promotion_widget.dart';
import 'package:hunty/theme/theme.dart';

class TabMapWidget extends StatefulWidget {
  const TabMapWidget({super.key});

  @override
  State<TabMapWidget> createState() => _TabMapWidgetState();
}

class _TabMapWidgetState extends State<TabMapWidget> {
  bool _showFullMap = false;
  List<LatLng> listLatLng = [
    const LatLng(10.799219433788611, 106.69346028619566),
    const LatLng(11.137812826367469, 107.34967027208327),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              GoogleMapWidget(
                listLatLng: listLatLng,
                mapToolbarEnabled: false,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
              ),
              Positioned(
                top: Sizes.dimen_12,
                right: Sizes.dimen_12,
                child: Container(
                  width: Sizes.dimen_36,
                  height: Sizes.dimen_36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: kColorGrayBorder,
                      width: Sizes.dimen_1, // Độ dày viền
                    ),
                    borderRadius: BorderRadius.circular(Sizes.dimen_4),
                  ),
                  child: IconButton(
                    icon: _showFullMap
                        ? SvgPicture.asset(IconsConstant.exitFullscreen)
                        : SvgPicture.asset(IconsConstant.fullscreen),
                    onPressed: () {
                      setState(
                        () {
                          _showFullMap = !_showFullMap;
                        },
                      );
                    },
                  ),
                ),
              ),
              const Positioned(
                bottom: Sizes.dimen_12,
                left: Sizes.dimen_12,
                right: Sizes.dimen_12,
                child: FilterDistanceWidget(),
              ),
            ],
          ),
        ),
        _showFullMap
            ? const SizedBox.shrink()
            : Expanded(
                child: SectionPromotionWidget(
                  titleSection:
                      Languages.searchLatestSearch.translator(context),
                ),
              ),
      ],
    );
  }
}
