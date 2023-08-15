import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/pick%20topic/picTopic%20widgets/topic_container.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class PickTopic extends StatefulWidget {
  const PickTopic({super.key});

  @override
  State<PickTopic> createState() => _PickTopicState();
}

class _PickTopicState extends State<PickTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pick your favorite topic',
              style: TextStyle(fontSize: 24.sp, color: Colors.black),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 294.w,
              height: 41.h,
              child: Text(
                textAlign: TextAlign.center,
                'Choose your favorite topic to help us deliver the most suitable course for you.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xffA9AEB2),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: 335.w,
              height: 386.h,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 20.h,
                crossAxisCount: 3,
                children: const [
                  TopicContainer(
                    imageLink: 'assets/iconImages/palette.png',
                    topicName: 'Art',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/business.png',
                    topicName: 'business',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/noodles.png',
                    topicName: 'Culinary',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/desktop.png',
                    topicName: 'Coding',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/fountain-pen.png',
                    topicName: 'Design',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/game-controller.png',
                    topicName: 'Gaming',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/mental-health.png',
                    topicName: 'Lifestyle',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/music.png',
                    topicName: 'Music',
                  ),
                  TopicContainer(
                    imageLink: 'assets/iconImages/football.png',
                    topicName: 'Sport',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CommonButton(
              buttonLabel: 'Start your journey',
              onPressed: () {
                Get.to(const BottomNavManager());
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 294.w,
              height: 41.h,
              child: Text(
                'You can still change your topic again later',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xffA9AEB2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
