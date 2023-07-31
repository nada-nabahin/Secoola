import 'package:flutter/material.dart';

class PickTopic extends StatefulWidget {
  const PickTopic({super.key});

  @override
  State<PickTopic> createState() => _PickTopicState();
}

class _PickTopicState extends State<PickTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pick your favorite topic',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 294,
                height: 41,
                child: const Text(
                  textAlign: TextAlign.center,
                  'Choose your favorite topic to help us deliver the most suitable course for you.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 335,
                height: 386,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 3,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.palette),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Art',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.business),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Business',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.dining),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Food',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.computer),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Coding',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.design_services),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Design',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/football.png'),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Gaming',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.person),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'LifeStyle',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.music_note),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Music',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.sports_football),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sport',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 335,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Start your journey',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00A9B7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 294,
                height: 41,
                child: const Text(
                  'You can still change your topic again later',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*  
          crossAxisAlignment: CrossAxisAlignment.center,

                 mainAxisSpacing: 30,
                 crossAxisSpacing: 30, */