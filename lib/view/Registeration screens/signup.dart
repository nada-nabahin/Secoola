import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/icon_container.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/registeration_form.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create your account to start your course lessons.',
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
              'Or sign up with your email',
              style: TextStyle(
                color: Color(0xffA9AEB2),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            //sign up form
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: RegisterationForm(
                buttonLabel: 'Sign up',
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
