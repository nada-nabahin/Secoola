import 'package:flutter/material.dart';

import 'SearchTextButton.dart';
import 'circle_button.dart';

class appBar extends StatelessWidget {
  String appBarTitle;

  appBar({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 186,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xff00A9B7),
            Color.fromARGB(255, 1, 180, 196),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  appBarTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 29,
          ),
          const SearchTextButton(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
