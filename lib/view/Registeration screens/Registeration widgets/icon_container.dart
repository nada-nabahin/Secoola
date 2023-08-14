import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  String imageLink;
  IconContainer({super.key, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Image(
        image: AssetImage(imageLink),
        width: 28,
        height: 28,
      ),
    );
  }
}
