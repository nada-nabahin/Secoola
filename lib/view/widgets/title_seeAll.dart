import 'package:flutter/material.dart';

class Title_seeAll extends StatelessWidget {
  final String title;
  String textButton_word;

  Title_seeAll({super.key, required this.title, required this.textButton_word});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        bottom: 20,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              textButton_word,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff00A9B7),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
