import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';

class ContainerUnderAppbar extends StatelessWidget {
  const ContainerUnderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xff00A9B7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          const SearchTextButton(),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
