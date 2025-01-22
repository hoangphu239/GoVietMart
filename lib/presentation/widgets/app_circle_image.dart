import 'package:flutter/material.dart';

class AppCircularImage extends StatelessWidget {
  final String name;
  final double width, height;
  final BoxFit fit;

  const AppCircularImage({
    super.key,
    required this.name,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        name, // Đường dẫn đến ảnh trong asset
        width: width,
        height: height,
        fit: fit, // Đảm bảo ảnh lấp đầy hình tròn
      ),
    );
  }
}
