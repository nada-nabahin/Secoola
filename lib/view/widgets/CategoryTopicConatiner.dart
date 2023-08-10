import 'package:flutter/material.dart';

class CategoryTopicConatiner extends StatelessWidget {
  IconData topicIcon;
  String topicName;
  CategoryTopicConatiner(
      {super.key, required this.topicIcon, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        color: Colors.white,
        height: 40,
        child: Row(
          children: [
            Icon(topicIcon),
            Text(topicName),
          ],
        ),
      ),
    );
  }
}
