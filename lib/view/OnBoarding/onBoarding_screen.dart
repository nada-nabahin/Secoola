import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/Registeration%20screens/signup.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoardingButtons.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
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
                    Spacer(),
                    ContenerColoeOnbordingCustom(color: Color(0xffFCE2EA)),
                    const SizedBox(
                      height: 100,
                    ),
                    OnBoardingText(
                      firstText: 'Join and study together',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 135,
                    ),
                    ContenerColoeOnbordingCustom(color: Color(0xffFFEA7D)),
                    const SizedBox(
                      height: 100,
                    ),
                    OnBoardingText(
                      firstText: 'Find your mentors',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 135,
                    ),
                    ContenerColoeOnbordingCustom(
                        color: const Color(0xffFD0B2FF)),
                    const SizedBox(
                      height: 100,
                    ),
                    OnBoardingText(
                      firstText: 'Explore new knowledge',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          ),
          OnBoardingButtons(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
