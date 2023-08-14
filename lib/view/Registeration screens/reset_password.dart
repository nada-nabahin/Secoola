import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/textField.dart';
import 'package:secoola_app/view/Registeration%20screens/recovery_code.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          BackArrowAndTitle(title: 'Reset Password'),
          const SizedBox(
            height: 80,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Reset your password',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Enter your email and a verification code to reset the password will be sent to your email.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          RegisterationTextField(
            label: 'Your email',
            textfieldIcon: Icons.lock,
          ),
          const SizedBox(
            height: 30,
          ),
          CommonButton(
            buttonLabel: 'Send verification code',
            onPressed: () {
              Get.to(RecoveryCode());
            },
          )
        ],
      ),
    );
  }
}
