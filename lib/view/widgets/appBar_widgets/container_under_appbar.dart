import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';

class ContainerUnderAppbar extends StatelessWidget {
  double containerHeight;
  String text;
  ContainerUnderAppbar(
      {super.key, required this.containerHeight, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xff00A9B7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SearchTextButton(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
