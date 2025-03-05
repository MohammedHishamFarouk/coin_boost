import 'package:coin_boost/core/style/color_manager.dart';
import 'package:coin_boost/view/home_screen.dart';
import 'package:coin_boost/view/rewarding_level_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0; // Tracks the selected tab

// List of screens for the different tabs
  final List<Widget> _screens = [
    HomeScreen(),
    RewardingLevelScreen(),
    Center(child: Text('Profile')),
  ];

// Function to handle tab changes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected tab
        backgroundColor: ColorManager.orange,
        onTap: _onItemTapped, // Change tab when tapped
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/icons/home_icon.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/icons/app_icon.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/icons/user_icon.png')),
            label: '',
          ),
        ],
      ),
    );
  }
}
