import 'package:flutter/material.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/widgets/Notification_Container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackArrowAndTitle(title: 'Notification'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Today',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            NotificationContainer(
              text1: 'Your payment is success',
              text2: 'Start your course now.',
              notificationIcon: Icons.payment,
            ),
            const SizedBox(
              height: 15,
            ),
            NotificationContainer(
              text1: 'Daily reminder',
              text2: 'Continue you recent course. ',
              notificationIcon: Icons.notifications,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Yesterday',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            NotificationContainer(
              text1: 'Download your certificate',
              text2: 'Go to account page to down...',
              notificationIcon: Icons.file_download_outlined,
            ),
            const SizedBox(
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
    );
  }
}
