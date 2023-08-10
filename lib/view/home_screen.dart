import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/courseDetails_screen.dart';
import 'package:secoola_app/view/widgets/CategoryTopicConatiner.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/appBar.dart';
import 'package:secoola_app/view/widgets/listView_item.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const appBar(),
            Title_seeAll(
              title: 'Popular course',
              textButton_word: 'See All',
            ),

            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(CourseDetailsScreen());
                    },
                    child: ListViewItem(
                      containerHeight: 140,
                      containerWidth: 220,
                      containerColor: Colors.amber,
                      title: 'Design Thingking Fundamental',
                      personName: 'Robert Fix',
                      price: '\$150',
                      noteAboutPrice: 'Best Seller',
                      shadeColor: const Color(0xffFCE2EA),
                      noteColor: const Color(0xffFF6666),
                    ),
                  ),
                  ListViewItem(
                    containerHeight: 140,
                    containerWidth: 220,
                    containerColor: const Color.fromARGB(255, 207, 127, 151),
                    title: 'Flutter Class - Advance Program',
                    personName: 'Wade Warren',
                    price: '\$24',
                    noteAboutPrice: 'Recommended',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Title_seeAll(
              title: 'Categories',
              textButton_word: 'See All',
            ),

            //i'll replace with list view
            /////////////////////////////////////////////
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CategoryTopicConatiner(
                          topicIcon: Icons.art_track, topicName: 'Art'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.laptop, topicName: 'Coding'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.design_services,
                          topicName: 'Design'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.health_and_safety,
                          topicName: 'Health'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.design_services,
                          topicName: 'Design'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.health_and_safety,
                          topicName: 'Health'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CategoryTopicConatiner(
                          topicIcon: Icons.art_track, topicName: 'Art'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.laptop, topicName: 'Coding'),
                      CategoryTopicConatiner(
                          topicIcon: Icons.design_services,
                          topicName: 'Design'),
                    ],
                  ),
                ],
              ),
            ),

            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            /////////////////////////////////////////////

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffA3CCDE),
                    title: 'Design Thingking F...',
                    personName: 'Dianne Russell',
                    price: '\$75',
                    noteAboutPrice: 'Best deal',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffFFB099),
                    title: 'Figma Prototyping 1...',
                    personName: 'Jacob Jones',
                    price: '\$32',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffFFB099),
                    title: 'UI UX Design Essentials',
                    personName: 'Esther Howard',
                    price: '\$83',
                    noteAboutPrice: 'deal',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffD0B2FF),
                    title: 'Flutter Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$97',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xff86F2CB),
                    title: 'Python Class - Adv...',
                    personName: 'Brooklyn Simmons',
                    price: '\$56',
                    noteAboutPrice: 'Most sold',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffFFEA7D),
                    title: 'Swift Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),

            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color(0xffFFB099),
                    title: 'Digital Marketing S...',
                    personName: 'Esther Howard',
                    price: '\$49',
                    noteAboutPrice: 'Hot deals',
                    shadeColor: Color(0xffFCE2EA),
                    noteColor: Color(0xffFF6666),
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color.fromARGB(255, 200, 222, 30),
                    title: 'Personal Branding F...',
                    personName: 'Savannah Nguyen',
                    price: '\$66',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 100,
                    containerWidth: 142,
                    containerColor: Color.fromARGB(255, 248, 174, 198),
                    title: 'Neuromarketing & Marketing Psychology ',
                    personName: 'Arlene McCoy',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
