import 'package:flutter/material.dart';
import 'package:secoola_app/view/courseCompleted_screen.dart';
import 'package:secoola_app/view/courseDetails_screen.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/account_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/myCourse_screen.dart';
import 'package:secoola_app/view/NavBar_Screens/wishlist_screen.dart';
import 'package:secoola_app/view/onBoarding_screen.dart';
import 'package:secoola_app/view/paymentSucess_screen.dart';
import 'package:secoola_app/view/payment_screen.dart';
import 'package:secoola_app/view/search%20screens/search_screen.dart';
import 'package:secoola_app/view/widgets/bottomHome.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFAFAFA)),
      home: OnBoarding(),
    ),
  );
}
