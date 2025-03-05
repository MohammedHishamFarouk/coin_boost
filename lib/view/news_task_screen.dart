import 'package:coin_boost/core/components/news_header.dart';
import 'package:flutter/material.dart';

class NewsTaskScreen extends StatelessWidget {
  const NewsTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> news = [
      const NewsHeader(),
      const Image(
        image: AssetImage('assets/news.png'),
        fit: BoxFit.cover,
      ),
      const Image(
        image: AssetImage('assets/news.png'),
        fit: BoxFit.cover,
      ),
      const Image(
        image: AssetImage('assets/news.png'),
        fit: BoxFit.cover,
      ),
      const Image(
        image: AssetImage('assets/news.png'),
        fit: BoxFit.cover,
      ),
      const Image(
        image: AssetImage('assets/news.png'),
        fit: BoxFit.cover,
      ),
    ];
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => news[index],
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: news.length,
      ),
    );
  }
}
