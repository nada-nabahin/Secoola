import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/icon_container.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/registeration_form.dart';
import 'package:secoola_app/view/Registeration%20screens/reset_password.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(width: 15),
                    Image(
                      image: AssetImage('assets/iconImages/wave.png'),
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login to your account to continue your course.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconContainer(
                  imageLink: 'assets/iconImages/google.png',
                ),
                IconContainer(imageLink: 'assets/iconImages/facebook.png'),
                IconContainer(
                  imageLink: 'assets/iconImages/apple-logo.png',
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Or login with your email',
              style: TextStyle(
                color: Color(0xffA9AEB2),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            //sign up forms
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: RegisterationForm(
                buttonLabel: 'Login',
                onPressed: () {
                  Get.to(PickTopic());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
