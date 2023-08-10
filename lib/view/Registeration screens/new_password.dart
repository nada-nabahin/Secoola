import 'package:flutter/material.dart';

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
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                textAlign: TextAlign.center,
                'New password',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
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
          Container(
            width: 335,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Your email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff00A9B7),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 335,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Set new password'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00A9B7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
