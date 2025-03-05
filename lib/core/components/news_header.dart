import 'package:flutter/material.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.red,
      child: const Image(
        image: AssetImage('assets/blogHeader.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}
