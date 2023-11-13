import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/screen/home_screen.dart';
import 'package:real_estate_app/screen/map_screen.dart';
import 'package:real_estate_app/screen/notif_screen.dart';
import 'package:real_estate_app/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  TextEditingController searchController = TextEditingController();
  int _currentIndex = 0;

  List<String> nameChoice = [
    'Building',
    'Community',
    'House',
    'Hotel',
    'Rent',
    'Building',
  ];
  List<String> imge = [
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
  ];
  List<String> imge1 = [
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
    'assets/images/Image2.png',
  ];

  final screens = [
    const HomeScreen(),
    const MapScreen(),
    const NotifScreen(),
    const ProfileScreen(),
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.location_on_rounded,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[_currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF4975E9),
          child: const Icon(Icons.add),
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _currentIndex,
          gapLocation: GapLocation.center,
          activeColor: const Color(0xFF4975E9),
          inactiveColor: const Color(0xFF4975E9),
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => setState(() => _currentIndex = index),
          //other params
        ),
      ),
    );
  }
}
