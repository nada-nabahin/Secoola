import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/Registeration%20screens/new_password.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({Key? key});

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
  final TextEditingController _digitController1 = TextEditingController();
  final TextEditingController _digitController2 = TextEditingController();
  final TextEditingController _digitController3 = TextEditingController();
  final TextEditingController _digitController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          BackArrowAndTitle(title: 'Verify'),
          const SizedBox(
            height: 80,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Recovery code',
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
                  'Check your inbox, we have sent the Verification code to your email.',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDigitTextField(_digitController1),
              const SizedBox(width: 10),
              _buildDigitTextField(_digitController2),
              const SizedBox(width: 10),
              _buildDigitTextField(_digitController3),
              const SizedBox(width: 10),
              _buildDigitTextField(_digitController4),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CommonButton(
              buttonLabel: 'Verify',
              onPressed: () {
                Get.to(const NewPassword());
              }),
          const SizedBox(
            height: 60,
          ),
          const Align(
            alignment: AlignmentDirectional.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Not retrieve any code?',
                    style: TextStyle(
                      color: Color(0xffA9AEB2),
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  'Resend code',
                  style: TextStyle(
                    color: Color(0xff00A9B7),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDigitTextField(TextEditingController controller) {
    return SizedBox(
      width: 69,
      height: 52,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
