import 'package:flutter/material.dart';
import 'package:secoola_app/home_screen.dart';
import 'package:secoola_app/onBoarding_screen.dart';
import 'package:secoola_app/pick_topic.dart';
import 'package:secoola_app/widgets/bottomNavBar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    ),
  );
}
