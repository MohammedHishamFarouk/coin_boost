import 'package:coin_boost/core/components/news_widget.dart';
import 'package:flutter/material.dart';

class NewsGrid extends StatelessWidget {
  const NewsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Row(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsWidget(),
          Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Column(
              spacing: 25,
              children: [
                Image(
                  image: AssetImage('assets/news.png'),
                  height: 60,
                  width: 80,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage('assets/news.png'),
                  height: 60,
                  width: 80,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage('assets/news.png'),
                  height: 60,
                  width: 80,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage('assets/news.png'),
                  height: 60,
                  width: 80,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
