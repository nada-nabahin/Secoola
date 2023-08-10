import 'package:flutter/material.dart';

class ContenerColoeOnbordingCustom extends StatelessWidget {
  Color? color;
   ContenerColoeOnbordingCustom({
    super.key, @required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 42.5),
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
