import 'package:flutter/material.dart';

import 'package:vipfirebase_admin/pages/today.dart';

import '../bonus.dart';
import '../combo.dart';
import '../dailyfiveplus.dart';
import '../sports.dart';
import '../sure.dart';

class PremiumLanding extends StatefulWidget {
  const PremiumLanding({super.key});

  @override
  State<PremiumLanding> createState() => _PremiumLandingState();
}

class _PremiumLandingState extends State<PremiumLanding> {
  var _currentIndex = 0;
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
            label: "ELITE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "SPECIAL",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "SINGLE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "HT/FT",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "50+ ODDS",
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
