import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class AdsCarousel extends StatelessWidget {
  const AdsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _AdCard(
          size: 30,
          radius: 7,
        ),
        _AdCard(
          size: 40,
        ),
        _AdCard(
          size: 50,
        ),
        _AdCard(
          color: ColorManager.white,
        ),
        _AdCard(
          size: 50,
        ),
        _AdCard(
          size: 40,
        ),
        _AdCard(
          size: 30,
          radius: 7,
        ),
      ],
    );
  }
}

class _AdCard extends StatelessWidget {
  const _AdCard({
    this.size = 62,
    this.radius = 10,
    this.color = ColorManager.orange,
  });
  final double size;
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: GestureDetector(
        onTap: color == ColorManager.white ? () {} : null,
        child: Card(
          color: color,
          shadowColor: Colors.black,
          elevation: color == ColorManager.white ? 5 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
            side: BorderSide(
              color: ColorManager.orange,
              width: 1.0,
            ),
          ),
          child: Center(
            child: Text(
              '\$2\nAD',
              style: TextStyle(
                color: color == ColorManager.white
                    ? ColorManager.orange
                    : ColorManager.white,
                fontSize: size / 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
