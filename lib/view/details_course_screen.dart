import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/widgets/courseDetails_bottom.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';
import 'package:secoola_app/view/widgets/tabbar_courseDetails.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseState();
}

class _CourseState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFEA7D),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CircleButton(
              circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
              icon: Icons.arrow_back,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: CircleButton(
                circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
                icon: Icons.shopping_cart,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: const Color(0xffFFEA7D),
              child: Center(
                child: CircleButton(
                  text: 'Course preview',
                  icon: Icons.play_circle,
                  circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TabBarVieWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //price
                    const CourseDetailsBottomContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                          child: const Icon(
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
                      const SizedBox(height: 65),
                      ContenerColoeOnbordingCustom(
                        color: const Color(0xffFFEA7D),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      OnBoardingText(
                          firstText: 'Nothing here yet',
                          secondText:
                              'You haven\'t added anything to your cart ,\n start exploring your favorite courses!'),
                      const SizedBox(
                        height: 75,
                      ),
                      CommonButton(
                        buttonLabel: 'Explore course',
                        onPressed: () {
                          Get.to(const BottomNavManager());
                        },
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
