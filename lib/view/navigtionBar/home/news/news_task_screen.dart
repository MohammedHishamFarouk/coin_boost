import 'package:coin_boost/view/core/components/newsWidgets/news_grid.dart';
import 'package:coin_boost/view/core/components/newsWidgets/news_header.dart';
import 'package:flutter/material.dart';

class NewsTaskScreen extends StatelessWidget {
  const NewsTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> news = [
      const NewsHeader(),
      const NewsGrid(),
      const NewsGrid(),
      const NewsGrid(),
      const NewsGrid(),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
          itemBuilder: (context, index) => news[index],
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: news.length,
        ),
      ),
    );
  }
}
