import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/courseDetails_screen.dart';
import 'package:secoola_app/view/widgets/CategoryTopicConatiner.dart';
import 'package:secoola_app/view/widgets/Notification_Container.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/appBarContainer.dart';
import 'package:secoola_app/view/widgets/colorContenerOnbording.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/widgets/listView_item.dart';
import 'package:secoola_app/view/widgets/onBoarding_text.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 5,
          ),
          child: Row(
            children: [
              Text(
                'Hi,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text(
                ' Dimas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              _shoppingBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 5,
                top: 5,
              ),
              child: CircleButton(
                circleButtonColor: Color.fromRGBO(112, 112, 112, 0.2),
                icon: Icons.shopping_cart,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              _notificationBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 5,
                top: 5,
              ),
              child: CircleButton(
                circleButtonColor: Color.fromRGBO(112, 112, 112, 0.2),
                icon: Icons.notifications,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            appBar(
              appBarTitle: ' Let\'s start learning!',
            ),
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
                      containerColor: Color(0xffFFEA7D),
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
                    containerColor: const Color(0xffA3CCDE),
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
                    containerColor: Color(0xff86F2CB),
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
                    containerColor: Color(0xffFCE2EA),
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
                    containerColor: Color(0xffFFEA7D),
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
                    containerColor: Color(0xffD0B2FF),
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
                    containerColor: Color(0xffA3CCDE),
                    title: 'Neuromarketing & Ma... ',
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

  /// shopping Bottom Sheet/////////
  void _shoppingBottomSheet(BuildContext context) {
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
                      CommonButton(buttonLabel: 'Explore course'),
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

  void _notificationBottomSheet(BuildContext context) {
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
                        color: const Color(0xffFAFAFA),
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
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        NotificationContainer(
                          text1: 'Your payment is success',
                          text2: 'Start your course now.',
                          notificationIcon: Icons.payment,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        NotificationContainer(
                          text1: 'Daily reminder',
                          text2: 'Continue you recent course. ',
                          notificationIcon: Icons.notifications,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        NotificationContainer(
                          text1: 'Download your certificate',
                          text2: 'Go to account page to down...',
                          notificationIcon: Icons.file_download_outlined,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        NotificationContainer(
                          text1: 'Summer sale!',
                          text2: 'Get the best offer only for you.',
                          notificationIcon: Icons.discount,
                        )
                      ],
                    ),
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
