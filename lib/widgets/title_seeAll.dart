import 'package:flutter/material.dart';

class Title_seeAll extends StatelessWidget {
  final String title;

  Title_seeAll({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xff00A9B7),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
