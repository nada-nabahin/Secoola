import 'package:flutter/material.dart';

class CategoryTopicConatiner extends StatelessWidget {
  String imageLink;
  String topicName;
  CategoryTopicConatiner(
      {super.key, required this.imageLink, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        margin: EdgeInsets.only(right: 20),
        color: Colors.white,
        height: 40,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(imageLink),
                width: 18,
                height: 18,
              ),
              SizedBox(width: 10),
              Text(topicName),
            ],
          ),
        ),
      ),
    );
  }
}
