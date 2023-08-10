import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/bottomContainer.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';
import 'package:secoola_app/view/widgets/itemes_detail.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              textAlign: TextAlign.start,
              'Items detail',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ItemsDetail(
            containerColor: Color(0xff86F2CB),
            title: 'Design THinking Fundamentals',
            personName: 'Dianne Russell',
            noteAboutCourse: 'Label',
            price: '\$75',
            noteColor: Color(0xff00A9B7),
            shadeColor: Color(0xffDCF3F5),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Title_seeAll(
              title: 'Payment',
              textButton_word: 'Change',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //title under the container
                      'Master Card',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '**** **** **** 8271',
                      style: TextStyle(
                        color: Color(0xffA9AEB2),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          const BottomContainer(),
        ],
      ),
    );
  }
}
