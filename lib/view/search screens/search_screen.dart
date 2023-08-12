import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/listTileTitle.dart';
import 'package:secoola_app/view/widgets/popular_search_word.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SearchTextField(),
            const SizedBox(
              height: 20,
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
                PopularSearchWord(
                  searchWord: 'UX Design',
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
                    ListTileTitle(title: 'Art'),
                    ListTileTitle(title: 'Coding'),
                    ListTileTitle(title: 'Design'),
                    ListTileTitle(title: 'Marketing'),
                    ListTileTitle(title: 'Lifestyle'),
                    ListTileTitle(title: 'Health'),
                    ListTileTitle(title: 'Business'),
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