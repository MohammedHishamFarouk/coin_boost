import 'package:coin_boost/modelView/earnings_provider.dart';
import 'package:coin_boost/view/core/components/rewards_card.dart';
import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RewardingLevelScreen extends StatelessWidget {
  const RewardingLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rewarding Levels'),
        leadingWidth: 90,
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
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: SizedBox(
            width: 343,
            child: ListView.separated(
              itemBuilder: (context, index) => RewardsCard(
                level: index + 1,
                minimumWithdrawal: (index + 1) * 50,
                progress: context.watch<EarningsProvider>().earnings /
                    ((index + 1) * 50),
              ),
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
            ),
          ),
        ),
      ),
    );
  }
}
