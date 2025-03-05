import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.image,
    required this.title,
    required this.reward,
  });

  final String image;
  final String title;
  final String reward;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width > 700
        ? 700
        : MediaQuery.sizeOf(context).width;
    return Material(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorManager.lightGrey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
              width: screenWidth - 15,
            ),
          ),
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: ColorManager.white.withOpacity(0.85),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                '$title            \$$reward',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
