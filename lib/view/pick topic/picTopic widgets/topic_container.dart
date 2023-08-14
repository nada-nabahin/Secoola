import 'package:flutter/material.dart';

class TopicContainer extends StatelessWidget {
  String imageLink;
  String topicName;
  TopicContainer({super.key, required this.imageLink, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Colors.white,
          ),
          child: Center(
            child: Image(
              image: AssetImage(imageLink),
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          topicName,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xffA9AEB2),
          ),
        ),
      ],
    );
  }
}
