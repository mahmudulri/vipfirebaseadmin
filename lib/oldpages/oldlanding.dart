import 'package:flutter/material.dart';
import 'package:vipfirebase_admin/pages/premiumall/elite.dart';
import 'package:vipfirebase_admin/pages/premiumall/fifty_plus.dart';
import 'package:vipfirebase_admin/pages/premiumall/half_full.dart';
import 'package:vipfirebase_admin/pages/premiumall/single.dart';
import 'package:vipfirebase_admin/pages/premiumall/special.dart';

import 'package:vipfirebase_admin/pages/today.dart';

import 'demo_old.dart';
import 'old_elite.dart';
import 'old_fifty_plus.dart';
import 'old_half_full.dart';
import 'old_single.dart';
import 'old_special.dart';

class OldLanding extends StatefulWidget {
  const OldLanding({super.key});

  @override
  State<OldLanding> createState() => _OldLandingState();
}

class _OldLandingState extends State<OldLanding> {
  var _currentIndex = 0;
  final pages = [
    DemoOld(),
    OldElite(),
    OldSpecial(),
    OldSingle(),
    OldHalfFull(),
    OldFifty(),
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
            label: "DEMO OLD",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "OLD ELITE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "OLD SPECIAL",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "OLD SINGLE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "OLD HT/FT",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
            ),
            label: "OLD 50+ ODDS",
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
