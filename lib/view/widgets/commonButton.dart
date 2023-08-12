import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String buttonLabel;
  CommonButton({super.key, required this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 52,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xff00A9B7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide(color: Color(0xff00A9B7)),
        ),
        child: Text(
          buttonLabel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
