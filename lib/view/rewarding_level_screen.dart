import 'package:coin_boost/core/components/rewards_card.dart';
import 'package:coin_boost/core/style/color_manager.dart';
import 'package:coin_boost/providers/earnings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RewardingLevelScreen extends StatelessWidget {
  const RewardingLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rewarding Levels'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 40,
              color: ColorManager.orange,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
        child: Center(
          child: Column(
            spacing: 30,
            children: [
              RewardsCard(
                level: 1,
                minimumWithdrawal: 50,
                progress: context.watch<EarningsProvider>().earnings / 50,
              ),
              RewardsCard(
                level: 2,
                minimumWithdrawal: 100,
                progress: context.watch<EarningsProvider>().earnings / 100,
              ),
              RewardsCard(
                level: 3,
                minimumWithdrawal: 150,
                progress: context.watch<EarningsProvider>().earnings / 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
