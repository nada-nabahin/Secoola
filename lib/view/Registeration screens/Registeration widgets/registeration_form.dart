import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/pick_topic.dart';

import '../reset_password.dart';

class RegisterationForm extends StatelessWidget {
  const RegisterationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 335,
            height: 52,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Your email',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xff00A9B7),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color(0xff00A9B7),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 335,
            height: 52,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Your password',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color(0xff00A9B7),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xff00A9B7),
                ),
              ),
            ),
          ),
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
          Container(
            width: 335,
            height: 52,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const PickTopic());
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff00A9B7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          const Text(
            'I already have an account',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff00A9B7),
            ),
          ),
        ],
      ),
    );
  }
}
