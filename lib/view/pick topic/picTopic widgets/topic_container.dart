import 'package:flutter/material.dart';

class TopicContainer extends StatefulWidget {
  final String imageLink;
  final String topicName;

  const TopicContainer({
    required this.imageLink,
    required this.topicName,
    Key? key,
  }) : super(key: key);

  @override
  _TopicContainerState createState() => _TopicContainerState();
}

class _TopicContainerState extends State<TopicContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: isSelected
                  ? Border.all(color: Color(0xff00A9B7), width: 2)
                  : null, // No border when not selected
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Center(
                  child: Image(
                    image: AssetImage(widget.imageLink),
                    width: 24,
                    height: 24,
                  ),
                ),
                if (isSelected)
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff00A9B7),
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 16),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.topicName,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Color(0xff00A9B7) : Color(0xffA9AEB2),
            ),
          ),
        ],
      ),
    );
  }
}
