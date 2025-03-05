import 'package:coin_boost/core/components/custom_progress_bar.dart';
import 'package:coin_boost/core/style/color_manager.dart';
import 'package:coin_boost/providers/earnings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RewardsCard extends StatelessWidget {
  const RewardsCard({
    super.key,
    this.progress = 0,
    required this.level,
    required this.minimumWithdrawal,
  });
  final double progress;
  final int level;
  final int minimumWithdrawal;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 343,
            height: 174,
            decoration: BoxDecoration(
              color: ColorManager.orange,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
                bottom: Radius.circular(15),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 25,
            ),
            child: Text(
              'Level 0$level',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 343,
            height: 137,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(color: ColorManager.orange),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimum Withdrawal = \$$minimumWithdrawal',
                  style: const TextStyle(
                    color: ColorManager.orange,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Your earnings = \$${context.watch<EarningsProvider>().earnings}',
                ),
                Spacer(),
                CustomProgressBar(progress: progress)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
