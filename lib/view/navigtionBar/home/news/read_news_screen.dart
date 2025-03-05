import 'package:coin_boost/view/core/components/custom_button.dart';
import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class ReadNewsScreen extends StatelessWidget {
  const ReadNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read News'),
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => Navigator.of(context).pop(),
            iconSize: 40,
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: ColorManager.orange,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage('assets/news.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        'Rules of Tasks',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const Text(
                      '1.Keep scrolling for 10 minutes.',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      '2. Keep clicking every 30 seconds.',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      "3. Don't leave still screen for more than 30 seconds.",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: CustomButton(
                        width: 192.36,
                        text: 'Start Now',
                        fontSize: 16,
                        onPressed: () => Navigator.pushReplacementNamed(
                          context,
                          '/NewsTask',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
