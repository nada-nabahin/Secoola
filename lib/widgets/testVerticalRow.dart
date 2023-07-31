import 'package:flutter/material.dart';

class TestVerticalRow extends StatelessWidget {
  const TestVerticalRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              height: 40,
              width: 120,
              child: const Row(
                children: [
                  Icon(Icons.draw_sharp),
                  Text('Art'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 40,
              width: 120,
              child: const Row(
                children: [
                  Icon(Icons.draw_sharp),
                  Text('Art'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 40,
              width: 120,
              child: const Row(
                children: [
                  Icon(Icons.draw_sharp),
                  Text('Art'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 40,
              width: 120,
              child: const Row(
                children: [
                  Icon(Icons.draw_sharp),
                  Text('Art'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 40,
              width: 120,
              child: const Row(
                children: [
                  Icon(Icons.draw_sharp),
                  Text('Art'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
