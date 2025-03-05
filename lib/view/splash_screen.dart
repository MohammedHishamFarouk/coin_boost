import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    Future.delayed(const Duration(seconds: 2), () {
      navigator.pushReplacementNamed('/OnBoarding');
    });
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/LOGO.png'),
        ),
      ),
    );
  }
}
