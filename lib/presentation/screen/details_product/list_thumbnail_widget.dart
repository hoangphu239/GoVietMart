import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/data/models/thumbnail_model.dart';
import 'package:hunty/presentation/widgets/app_thumbnail.dart';

class ListThumbnailWidget extends StatefulWidget {
  final List<ThumbnailModel> thumbnails;

  const ListThumbnailWidget({
    super.key,
    required this.thumbnails,
  });

  @override
  State<ListThumbnailWidget> createState() => _ListThumbnailWidgetState();
}

class _ListThumbnailWidgetState extends State<ListThumbnailWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: Sizes.dimen_16, top: Sizes.dimen_15),
      height: Sizes.dimen_65,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: widget.thumbnails.length,
        itemBuilder: (context, index) {
          return AppThumbnail(
            imageName: widget.thumbnails[index].image,
            width: Sizes.dimen_50,
            height: Sizes.dimen_50,
            isSelected: selectedIndex == index,
            index: index,
            onPress: (index) {
              setState(() {
                if (selectedIndex >= 0) {
                  widget.thumbnails[selectedIndex].isSelected = false;
                }
                widget.thumbnails[index].isSelected = true;
                selectedIndex = index;
              });
            },
          );
        },
        separatorBuilder: (context, index) =>
            const SizedBox(width: Sizes.dimen_16),
      ),
    );
  }
}
