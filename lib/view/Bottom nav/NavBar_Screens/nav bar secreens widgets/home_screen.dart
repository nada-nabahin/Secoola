import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:secoola_app/view/details_course_screen.dart';
import 'package:secoola_app/view/widgets/CategoryTopicConatiner.dart';
import 'package:secoola_app/view/widgets/Notification_Container.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/container_under_appbar.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/widgets/courseDetails_bottom.dart';
import 'package:secoola_app/view/widgets/listView_item.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xff00A9B7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Hi,Dimas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              _shoppingBottomSheet(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 5.w,
                top: 5.h,
              ),
              child: CircleButton(
                circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.3),
                icon: Icons.shopping_cart,
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          GestureDetector(
            onTap: () {
              _notificationBottomSheet(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 5.w,
                top: 5.h,
              ),
              child: CircleButton(
                circleButtonColor: const Color.fromRGBO(112, 112, 112, .3),
                icon: Icons.notifications,
              ),
            ),
          ),
        ],
      ),
      /////////////////////////////////////////////////////
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ContainerUnderAppbar(
              containerHeight: 180.h,
              text: " Let\'s start learning!",
            ),

            //first listview
            Title_seeAll(
              title: 'Popular course',
              textButton_word: 'See All',
            ),
            Container(
              height: 230.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const CourseDetails());
                    },
                    child: ListViewItem(
                      containerHeight: 137.h,
                      containerWidth: 220.w,
                      containerColor: const Color(0xffFFEA7D),
                      title: 'Design Thingking Fundamental',
                      personName: 'Robert Fix',
                      price: '\$150',
                      noteAboutPrice: 'Best Seller',
                      shadeColor: const Color(0xffFCE2EA),
                      noteColor: const Color(0xffFF6666),
                    ),
                  ),
                  ListViewItem(
                    containerHeight: 137.h,
                    containerWidth: 220.w,
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
            SizedBox(height: 10.h),

            //horizontal categories
            Title_seeAll(
              title: 'Categories',
              textButton_word: 'See All',
            ),

            //i'll replace with list view
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/paint.png',
                            topicName: 'Art'),
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/desktop.png',
                            topicName: 'Coding'),
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/palette.png',
                            topicName: 'Design'),
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/mental-health.png',
                            topicName: 'Health'),
                        CategoryTopicConatiner(
                          imageLink: 'assets/iconImages/business.png',
                          topicName: 'Business',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/music.png',
                            topicName: 'Music'),
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/football.png',
                            topicName: 'Sport'),
                        CategoryTopicConatiner(
                            imageLink: 'assets/iconImages/game-controller.png',
                            topicName: 'Gaming'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //2nd listview
            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            Container(
              height: 190.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xff86F2CB),
                    title: 'Design Thingking F...',
                    personName: 'Dianne Russell',
                    price: '\$75',
                    noteAboutPrice: 'Best deal',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffFCE2EA),
                    title: 'Figma Prototyping 1...',
                    personName: 'Jacob Jones',
                    price: '\$32',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffFFB099),
                    title: 'UI UX Design Essentials',
                    personName: 'Esther Howard',
                    price: '\$83',
                    noteAboutPrice: 'deal',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                ],
              ),
            ),

            //3rd listview
            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            Container(
              height: 190.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffFFEA7D),
                    title: 'Flutter Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$97',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xff86F2CB),
                    title: 'Python Class - Adv...',
                    personName: 'Brooklyn Simmons',
                    price: '\$56',
                    noteAboutPrice: 'Most sold',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffFFEA7D),
                    title: 'Swift Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                ],
              ),
            ),

            //4th listview
            Title_seeAll(
              title: 'Your topic',
              textButton_word: 'See All',
            ),
            Container(
              height: 190.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffFFB099),
                    title: 'Digital Marketing S...',
                    personName: 'Esther Howard',
                    price: '\$49',
                    noteAboutPrice: 'Hot deals',
                    shadeColor: const Color(0xffFCE2EA),
                    noteColor: const Color(0xffFF6666),
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffD0B2FF),
                    title: 'Personal Branding F...',
                    personName: 'Savannah Nguyen',
                    price: '\$66',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerHeight: 97.h,
                    containerWidth: 142.w,
                    containerColor: const Color(0xffA3CCDE),
                    title: 'Neuromarketing & Ma... ',
                    personName: 'Arlene McCoy',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }

  //BOTTOM SHEETS//

  /// shopping Bottom Sheet/////////
  void _shoppingBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 760.h,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 10.h),
                    child: Container(
                      height: 52.h,
                      width: 52.w,
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
                      SizedBox(height: 65.h),
                      ContenerColoeOnbordingCustom(
                        color: const Color(0xffFFEA7D),
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      OnBoardingText(
                          firstText: 'Nothing here yet',
                          secondText:
                              'You haven\'t added anything to your cart ,\n start exploring your favorite courses!'),
                      SizedBox(
                        height: 75.h,
                      ),
                      CommonButton(
                        buttonLabel: 'Explore course',
                        onPressed: () {
                          Get.back();
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

  /// notification Bottom Sheet/////////
  void _notificationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 760.h,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 10.h),
                    child: Container(
                      height: 52.h,
                      width: 52.w,
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
                      top: 20.h,
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        NotificationContainer(
                          text1: 'Your payment is success',
                          text2: 'Start your course now.',
                          notificationIcon: Icons.payment,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        NotificationContainer(
                          text1: 'Daily reminder',
                          text2: 'Continue you recent course. ',
                          notificationIcon: Icons.notifications,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        NotificationContainer(
                          text1: 'Download your certificate',
                          text2: 'Go to account page to down...',
                          notificationIcon: Icons.file_download_outlined,
                        ),
                        SizedBox(
                          height: 15.h,
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
