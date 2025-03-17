import 'package:coin_boost/modelView/ads_provider.dart';
import 'package:coin_boost/modelView/earnings_provider.dart';
import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdsCarousel extends StatelessWidget {
  const AdsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final adProvider = Provider.of<AdProvider>(context);
    return Center(
      child: SizedBox(
        height: 62,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const _AdCard(
                size: 30,
                radius: 7,
              ),
              const _AdCard(
                size: 40,
              ),
              const _AdCard(
                size: 50,
              ),
              Consumer<EarningsProvider>(
                builder: (context, provider, child) {
                  return _AdCard(
                    color: provider.dailyLogin
                        ? ColorManager.orange
                        : ColorManager.white,
                    onTap: () {
                      adProvider.showInterstitialAd();
                      provider.totalEarnings(2);
                      provider.dailyLogin = true;
                    },
                  );
                },
              ),
              const _AdCard(
                size: 50,
              ),
              const _AdCard(
                size: 40,
              ),
              const _AdCard(
                size: 30,
                radius: 7,
              ),
            ],
          ),
          itemCount: 1,
        ),
      ),
    );
  }
}

class _AdCard extends StatelessWidget {
  const _AdCard({
    this.size = 62,
    this.radius = 10,
    this.color = ColorManager.orange,
    this.onTap,
  });

  final double size;
  final double radius;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: GestureDetector(
        onTap: color == ColorManager.white ? onTap : null,
        child: Card(
          color: color,
          shadowColor: Colors.black,
          elevation: color == ColorManager.white ? 5 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
            side: const BorderSide(
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
