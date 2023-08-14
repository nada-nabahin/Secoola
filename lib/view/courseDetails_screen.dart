import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/bottomContainer.dart';
import 'package:secoola_app/view/widgets/colorContenerOnbording.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';
import 'package:secoola_app/view/widgets/tabBar.dart';
import 'package:secoola_app/view/widgets/tabbar_for_courseDetails.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0xffFFEA7D),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CircleButton(
              circleButtonColor: Color.fromRGBO(112, 112, 112, 0.2),
              icon: Icons.arrow_back,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: CircleButton(
                circleButtonColor: Color.fromRGBO(112, 112, 112, 0.2),
                icon: Icons.shopping_cart,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                color: Color(0xffFFEA7D),
                child: Center(
                  child: CircleButton(
                    circleButtonColor: Color.fromRGBO(112, 112, 112, 0.2),
                    icon: Icons.play_circle_fill,
                    text: 'Course preview',
                  ),
                ),
              ),
              Container(
                //border radius not appear!!
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Design Thinking Fundamental',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const PersonWidget(
                            personName: 'Halo Academy',
                            iconColor: Color(0xff00A9B7),
                            fontSize: 16,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Colors.amber[300],
                                size: 16,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '4.8',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        textAlign: TextAlign.left,
                        'Description this is a simple description that explain\n the description about the class or blabla bla and then\n blablabla of course.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffA9AEB2),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      //details///////////////
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Students',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffA9AEB2),
                                ),
                              ),
                              Text(
                                '143.247',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Last update',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffA9AEB2),
                                ),
                              ),
                              Text(
                                'Feb 2, 2021',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Language',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffA9AEB2),
                                ),
                              ),
                              Text(
                                'English',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Subtitle',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffA9AEB2),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'English and ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '5 more',
                                    style: TextStyle(
                                      color: Color(0xff00A9B7),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            TabBarForCourseDetails(),
                            //  BottomContainer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///////Bottom sheet////////

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 760,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.clear,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 65),
                      ContenerColoeOnbordingCustom(
                        color: Color(0xffFFEA7D),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      OnBoardingText(
                          firstText: 'Nothing here yet',
                          secondText:
                              'You haven\'t added anything to your cart ,\n start exploring your favorite courses!'),
                      SizedBox(
                        height: 75,
                      ),
                      CommonButton(
                        buttonLabel: 'Explore course',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
