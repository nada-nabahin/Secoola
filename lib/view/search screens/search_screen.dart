import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/search%20screens/search_result.dart';
import 'package:secoola_app/view/widgets/listTileTitle.dart';
import 'package:secoola_app/view/widgets/popular_search_word.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            SearchTextField(
              onPressed: () {},
              searchText: 'Search for anything',
              searchIcon: Icons.mic,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Popular search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopularSearchWord(
                  searchWord: 'Cooking',
                ),
                PopularSearchWord(
                  searchWord: 'Python',
                ),
                PopularSearchWord(
                  searchWord: 'Excel',
                ),
                PopularSearchWord(
                  searchWord: 'Coding',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopularSearchWord(
                  searchWord: 'WebFlow',
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SearchResultScreen());
                  },
                  child: PopularSearchWord(
                    searchWord: 'UX Design',
                  ),
                ),
                PopularSearchWord(
                  searchWord: 'Flutter',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.start,
              'Browse category',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTileTitle(
                        topicName: 'Art',
                        imageLink: 'assets/iconImages/paint.png'),
                    ListTileTitle(
                        topicName: 'Coding',
                        imageLink: 'assets/iconImages/desktop.png'),
                    ListTileTitle(
                      topicName: 'Design',
                      imageLink: 'assets/iconImages/palette.png',
                    ),
                    ListTileTitle(
                      topicName: 'Health',
                      imageLink: 'assets/iconImages/mental-health.png',
                    ),
                    ListTileTitle(
                      topicName: 'Lifestyle',
                      imageLink: 'assets/iconImages/mental-health.png',
                    ),
                    ListTileTitle(
                      topicName: 'Business',
                      imageLink: 'assets/iconImages/business.png',
                    ),
                    ListTileTitle(
                      topicName: 'Gaming',
                      imageLink: 'assets/iconImages/game-controller.png',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
