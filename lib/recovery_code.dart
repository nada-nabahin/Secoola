import 'package:flutter/material.dart';

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
                'Verify',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Column(
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
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDigitTextField(_digitController1),
              SizedBox(width: 10),
              _buildDigitTextField(_digitController2),
              SizedBox(width: 10),
              _buildDigitTextField(_digitController3),
              SizedBox(width: 10),
              _buildDigitTextField(_digitController4),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 335,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Verify'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff00A9B7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Align(
            alignment: AlignmentDirectional.center,
            child: Row(
              children: [
                Text(
                  'Not retrieve any code?',
                  style: TextStyle(
                    color: Color(0xffA9AEB2),
                    fontSize: 14,
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
