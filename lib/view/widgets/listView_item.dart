import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';

class ListViewItem extends StatelessWidget {
  Color? containerColor;
  final String title;
  final String personName;
  final String price;
  final String noteAboutPrice;
  Color? shadeColor;
  Color? noteColor;
  double containerWidth;
  double containerHeight;

  ListViewItem({
    super.key,
    required this.containerColor,
    required this.title,
    required this.personName,
    required this.price,
    required this.noteAboutPrice,
    this.shadeColor,
    this.noteColor,
    required this.containerWidth,
    required this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        height: 224,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //color container
            Container(
              width: containerWidth,
              height: containerHeight,
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                //container color
                color: containerColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 49,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_sharp,
                            color: Colors.amber[300],
                            size: 12,
                          ),
                          const SizedBox(width: 3),
                          const Text(
                            '4.8',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //texts
            Padding(
              padding: const EdgeInsets.only(
                left: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //title under the container
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  PersonWidget(
                    personName: personName,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          color: Color(0xff00A9B7),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 85,
                        height: 20,
                        decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          noteAboutPrice,
                          style: TextStyle(
                            color: noteColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
