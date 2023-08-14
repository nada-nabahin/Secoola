import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/textField.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

import '../reset_password.dart';

class RegisterationForm extends StatelessWidget {
  String buttonLabel;
  final VoidCallback onPressed;
  RegisterationForm({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RegisterationTextField(
              label: 'Your email', textfieldIcon: Icons.email),
          const SizedBox(
            height: 20,
          ),
          RegisterationTextField(
              label: 'Your password', textfieldIcon: Icons.lock),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Get.to(const ResetPassword());
              },
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Color(0xffA9AEB2),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CommonButton(buttonLabel: buttonLabel, onPressed: onPressed),
          const SizedBox(
            height: 120,
          ),
          GestureDetector(
            onTap: () {
              Get.to(SignIn());
            },
            child: const Text(
              'I already have an account',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff00A9B7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
