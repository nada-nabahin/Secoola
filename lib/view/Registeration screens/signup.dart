import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/pick_topic.dart';

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
        padding: EdgeInsets.only(left: .5),
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
            const Padding(
              padding: EdgeInsets.only(left: 55, right: 55),
              child: Row(
                children: [
                  Icon(
                    Icons.facebook,
                    size: 38,
                  ),
                  SizedBox(width: 80),
                  Icon(
                    Icons.apple,
                    size: 38,
                  ),
                  SizedBox(width: 80),
                  Icon(
                    Icons.android,
                    size: 38,
                  )
                ],
              ),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 335,
                        height: 52,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Your email',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color(0xff00A9B7),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff00A9B7),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 335,
                        height: 52,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Your password',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color(0xff00A9B7),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color(0xff00A9B7),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 335,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(PickTopic());
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00A9B7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        'By continuing, you agree to our Terms & Conditions and Privacy Policy',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffA9AEB2),
                        ),
                      ),
                      const SizedBox(
                        height: 110,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SignIn());
                        },
                        child: const Text(
                          'I already have an account',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff00A9B7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
