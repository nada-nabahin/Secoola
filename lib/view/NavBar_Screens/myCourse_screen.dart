import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/appBarContainer.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';
import 'package:secoola_app/view/widgets/tabBar.dart';

class MyCourseScreen extends StatefulWidget {
  MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Row(
            children: [
              Text(
                'My',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                ' Course',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(
              appBarTitle: '',
            ),
            SizedBox(
              height: 20,
            ),
            TabBarVieWidget(
              tabLabel: 'Ongoing',
              tabLabel2: 'Complete',
            ),
            SizedBox(
              height: 40,
            ),
            CourseScreenTopic(
              percentrdegree: .8,
              containerColor: Color(0xffFFEA7D),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: Color(0xff00A9B7),
              shadeColor: Color(0xffDCF3F5),
              progress: '20/29 lesson',
              dueTime: 'November 2, 2021',
            ),
            CourseScreenTopic(
              percentrdegree: .3,
              containerColor: Color(0xffDCF3F5),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: Color(0xff00A9B7),
              shadeColor: Color(0xffDCF3F5),
              progress: '7/32 lesson',
              dueTime: 'August 24, 2021',
            ),
            CourseScreenTopic(
              percentrdegree: .6,
              containerColor: Color(0xffFFB099),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: Color(0xff00A9B7),
              shadeColor: Color(0xffDCF3F5),
              progress: '28/40 lesson',
              dueTime: 'August 24, 2021',
            ),
          ],
        ),
      ),
    );
  }
}
