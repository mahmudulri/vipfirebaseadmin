import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'landing.dart';
import 'pages/freetips.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDUSKkYk9MidkYFlbsQuNyhsAQtq_544Lo",
        appId: "1:74132673789:web:f604cf2c5e5d8b2a98da94",
        messagingSenderId: "74132673789",
        databaseURL: "https://vip-betting-tips-27b28.firebaseio.com/",
        authDomain: "vip-betting-tips-27b28.firebaseapp.com",
        projectId: "vip-betting-tips-27b28"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}
