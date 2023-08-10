import 'package:flutter/material.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/account_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/myCourse_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/wishlist_screen.dart';

class ScreenManager {
  static List<Widget> screens = [
    HomeScreen(),
    MyCourseScreen(),
    WishlistScreen(),
    AccountScreen(),
  ];
}
