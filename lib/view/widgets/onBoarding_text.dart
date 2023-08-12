import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  String firstText;
  String secondText;
  OnBoardingText(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 271,
        child: Column(
          children: [
            Text(
              firstText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              secondText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xffA9AEB2),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
