import 'package:flutter/material.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/textField.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          BackArrowAndTitle(title: 'New password'),
          const SizedBox(
            height: 80,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Set your password',
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
              label: 'Your email', textfieldIcon: Icons.email),
          const SizedBox(
            height: 30,
          ),
          CommonButton(buttonLabel: 'Set new password', onPressed: () {}),
        ],
      ),
    );
  }
}
