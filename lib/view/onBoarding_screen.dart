import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/Registeration%20screens/signup.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/widgets/colorContenerOnbording.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 16,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                dotWidth: 105,
                dotHeight: 4,
                dotColor: Color.fromARGB(255, 165, 224, 230),
                activeDotColor: Color(0xff00A9B7),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 143,
                    ),
                    ContenerColoeOnbordingCustom(color: Color(0xffFCE2EA)),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 271,
                        child: const Column(
                          children: [
                            Text(
                              'Join and study together',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Find your best experience while studying and seeking knowledge in here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffA9AEB2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'Let\'s get started',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignIn());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'I already have an account',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 143,
                    ),
                    ContenerColoeOnbordingCustom(color: Color(0xffFFEA7D)),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 271,
                        child: const Column(
                          children: [
                            Text(
                              'Find your mentors',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Find your best experience while studying and seeking knowledge in here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffA9AEB2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'Let\'s get started',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignIn());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'I already have an account',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 143,
                    ),
                    ContenerColoeOnbordingCustom(
                        color: const Color(0xffFD0B2FF)),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 271,
                        child: const Column(
                          children: [
                            Text(
                              'Explore new knowledge',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Find your best experience while studying and seeking knowledge in here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffA9AEB2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'Let\'s get started',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 335,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Color(0xff00A9B7)),
                        ),
                        child: const Text(
                          'I already have an account',
                          style: TextStyle(
                            color: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
