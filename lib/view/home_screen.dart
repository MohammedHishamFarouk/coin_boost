import 'package:coin_boost/core/components/ads_carousel.dart';
import 'package:coin_boost/core/components/task_card.dart';
import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width > 700
        ? 700
        : MediaQuery.sizeOf(context).width;
    List<Widget> page = [
      const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Text(
            'Claim your Daily Reward',
            style: TextStyle(
              color: ColorManager.brownOrange,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      const AdsCarousel(),
      const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            'Do Tasks, Earn Reward',
            style: TextStyle(
              color: ColorManager.brownOrange,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          'You can do these tasks as many times \nas you want to',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      TaskCard(
        image: 'assets/merge cooking.png',
        reward: '10',
        title: 'Play Games',
        onTap: () {},
      ),
      const SizedBox(height: 20),
      TaskCard(
        image: 'assets/news.png',
        reward: '5',
        title: 'Read News',
        onTap: () {},
      ),
      const SizedBox(height: 20)
    ];
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Spacer(),
          Image(
            image: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 8),
          Text('John Doe'),
          Spacer(
            flex: 4,
          ),
          Image(
            image: AssetImage('assets/icons/star medal.png'),
          ),
          SizedBox(width: 6),
          Text('Level 1'),
          Spacer(),
          Image(
            image: AssetImage('assets/icons/wallet.png'),
          ),
          SizedBox(width: 6),
          Text('\$25.00'),
          Spacer(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: SizedBox(
            width: screenWidth - 15,
            height: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) => page[index],
              itemCount: page.length,
            ),
          ),
        ),
      ),
    );
  }
}
