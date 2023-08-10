import 'package:flutter/material.dart';

class ListTileTitle extends StatelessWidget {
  String title;
  ListTileTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      onTap: () {
        ///
      },
    );
  }
}
