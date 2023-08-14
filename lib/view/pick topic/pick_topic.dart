import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/home_screen.dart';
import 'package:secoola_app/view/pick%20topic/picTopic%20widgets/topic_container.dart';
import 'package:secoola_app/view/widgets/bottomHome.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pick your favorite topic',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 294,
                height: 41,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Choose your favorite topic to help us deliver the most suitable course for you.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 335,
                height: 386,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 3,
                  children: [
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
                height: 30,
              ),
              CommonButton(
                buttonLabel: 'Start your journey',
                onPressed: () {
                  Get.to(HomeScreen());
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 294,
                height: 41,
                child: const Text(
                  'You can still change your topic again later',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
