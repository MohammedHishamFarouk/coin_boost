import 'package:coin_boost/core/components/news_tag.dart';
import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          child: Row(
            spacing: 15,
            children: [
              NewsTag(
                height: 16,
                width: 90,
                text: 'Trending',
                color: Colors.lightBlue,
                fontSize: 12,
              ),
              Flexible(
                child: Text(
                  "Today's hottest topic",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            const Image(
              image: AssetImage('assets/blogHeader.jpg'),
              fit: BoxFit.fill,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  NewsTag(
                    height: 12,
                    width: 65,
                    text: 'Commercial',
                    color: ColorManager.darkGrey,
                    fontSize: 9,
                  ),
                  Text(
                    'Discover the 10 best Hairstyles\nAccording to Your Face Shape',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Date: 12/12/2022',
                      style: TextStyle(
                        color: ColorManager.transparentWhite,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
