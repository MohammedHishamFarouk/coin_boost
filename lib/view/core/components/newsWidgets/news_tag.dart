import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class NewsTag extends StatelessWidget {
  const NewsTag({
    super.key,
    required this.height,
    this.width,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  final double height;
  final double? width;
  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
