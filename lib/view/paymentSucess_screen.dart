import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/myCourse_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';

class PaymentSucess extends StatelessWidget {
  const PaymentSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: ContenerColoeOnbordingCustom(
              color: Color(0xffFFEA7D),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'Transaction suceess',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            'Congratulation! Your transaction is successful,\n you can start your course now.',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff899197),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff00A9B7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 60,
                right: 60,
                top: 12,
                bottom: 12,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(MyCourseScreen());
                },
                child: Text(
                  textAlign: TextAlign.center,
                  'Go to my course',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Get.to(BottomNavManager());
            },
            child: const Text(
              'Back to Home',
              style: TextStyle(
                color: Color(0xff00A9B7),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
