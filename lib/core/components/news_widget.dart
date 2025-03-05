import 'package:coin_boost/core/components/news_tag.dart';
import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          NewsTag(
            height: 15,
            width: 60,
            text: 'Vacation',
            color: ColorManager.orange,
            fontSize: 10,
          ),
          Image(
            image: AssetImage('assets/boy.webp'),
            fit: BoxFit.fill,
          ),
          Text(
            "Most Beautiful Things to Do in Sydney with Your Boyfriend",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Take a sunset cruise on Sydney Harbour for breathtaking views stroll hand-in-hand through the Royal Botanic Garden ,or enjoy a cozy beach picnic at Watsons Bay.',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
