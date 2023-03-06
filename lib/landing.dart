import 'package:flutter/material.dart';

import 'package:vipfirebase_admin/pages/today.dart';

import 'pages/bonus.dart';
import 'pages/combo.dart';
import 'pages/dailyfiveplus.dart';
import 'pages/sports.dart';
import 'pages/sure.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var _currentIndex = 5;
  final pages = [
    TodayTips(),
    DailyFivePlus(),
    SureTips(),
    ComboTips(),
    BonusTips(),
    SportsDemo(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: screenWidth * 0.010,
        elevation: 0.0,
        // backgroundColor: Color(0xff2c3e50),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Today Tips",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Daily Five Plus",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Sure Tips",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Combo Tips",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Bonus Tips",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "Sports Demo",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
