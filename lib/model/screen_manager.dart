import 'package:flutter/material.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/account_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/home_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/myCourse_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/wishlist_screen.dart';

class ScreenManager {
  static List<Widget> screens = [
    HomeScreen(),
    MyCourseScreen(),
    WishlistScreen(),
    AccountScreen(),
  ];
}
