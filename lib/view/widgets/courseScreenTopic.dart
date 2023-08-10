import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseScreenTopic extends StatelessWidget {
  String title;
  String personName;
  Color? shadeColor;
  Color? noteColor;
  Color? containerColor;
  final String noteAboutCourse;
  String progress;
  String dueTime;
  double percentrdegree;

  CourseScreenTopic(
      {super.key,
      required this.title,
      required this.personName,
      this.shadeColor,
      this.noteColor,
      required this.noteAboutCourse,
      required this.progress,
      required this.dueTime,
      required this.percentrdegree,
      this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 186,
      width: 335,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //title under the container
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //person name & icon
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 18,
                        color: Color(0xffA9AEB2),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                      ),
                      Text(
                        personName,
                        style: const TextStyle(
                          color: Color(0xffA9AEB2),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: shadeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        noteAboutCourse,
                        style: TextStyle(
                          color: noteColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //progress & due time
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Progress',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffA9AEB2),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    progress,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff1D2D3A),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Due time',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffA9AEB2),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    dueTime,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff1D2D3A),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            lineHeight: 8,
            percent: percentrdegree,
            progressColor: Color(0xff00CDB1),
            backgroundColor: Color(0xffF6F6F6),
          ),
        ],
      ),
    );
  }
}
