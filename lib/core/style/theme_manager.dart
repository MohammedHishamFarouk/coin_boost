import 'package:coin_boost/core/style/color_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'RobotoMono',
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: ColorManager.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
