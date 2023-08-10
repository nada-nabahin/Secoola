import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';
import 'package:secoola_app/view/widgets/tabBar.dart';

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFFEA7D),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CircleButton(
                icon: Icons.arrow_back,
              )),
          actions: [
            CircleButton(
              icon: Icons.shopping_cart,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: const Color(0xffFFEA7D),
              child: Center(
                child: CircleButton(
                  icon: Icons.play_circle_fill,
                  text: 'Course preview',
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
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
                          child: TabBarVieWidget(
                              tabLabel: 'Curriculum', tabLabel2: 'Review'),
                        ),
                      ],
                    ),
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
