import 'package:coin_boost/modelView/ads_provider.dart';
import 'package:coin_boost/modelView/earnings_provider.dart';
import 'package:coin_boost/view/core/style/color_manager.dart';
import 'package:coin_boost/view/core/style/theme_manager.dart';
import 'package:coin_boost/view/navigtionBar/bottom_nav_screen.dart';
import 'package:coin_boost/view/navigtionBar/home/news/news_task_screen.dart';
import 'package:coin_boost/view/navigtionBar/home/news/read_news_screen.dart';
import 'package:coin_boost/view/onboarding_screen.dart';
import 'package:coin_boost/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ColorManager.orange,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EarningsProvider()),
        ChangeNotifierProvider(create: (context) => AdProvider()),
      ],
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeManager.appTheme,
            initialRoute: '/splash',
            routes: {
              '/splash': (context) => const SplashScreen(),
              '/OnBoarding': (context) => const OnboardingScreen(),
              '/BottomNavigation': (context) => const BottomNavScreen(),
              '/ReadNews': (context) => const ReadNewsScreen(),
              '/NewsTask': (context) => const NewsTaskScreen(),
            },
          ),
        ),
      ),
    );
  }
}
