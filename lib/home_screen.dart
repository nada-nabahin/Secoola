import 'package:flutter/material.dart';
import 'package:secoola_app/widgets/SearchTextField.dart';
import 'package:secoola_app/widgets/bottomNavBar.dart';
import 'package:secoola_app/widgets/circle_button.dart';
import 'package:secoola_app/widgets/appBar.dart';
import 'package:secoola_app/widgets/listView_item.dart';
import 'package:secoola_app/widgets/testVerticalRow.dart';
import 'package:secoola_app/widgets/title_seeAll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const appBar(),
            Title_seeAll(
              title: 'Popular course',
            ),

            Container(
              height: 226,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerColor: Colors.amber,
                    title: 'Design Thingking Fundamental',
                    personName: 'Robert Fix',
                    price: '\$150',
                    noteAboutPrice: 'Best Seller',
                    shadeColor: const Color(0xffFCE2EA),
                    noteColor: const Color(0xffFF6666),
                  ),
                  ListViewItem(
                    containerColor: const Color.fromARGB(255, 207, 127, 151),
                    title: 'Flutter Class - Advance Program',
                    personName: 'Wade Warren',
                    price: '\$24',
                    noteAboutPrice: 'Recommended',
                    shadeColor: const Color(0xffDCF3F5),
                    noteColor: const Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Title_seeAll(
              title: 'Categories',
            ),

            //i'll replace with list view
            /////////////////////////////////////////////
            const TestVerticalRow(),
            const TestVerticalRow(),
            Title_seeAll(title: 'Your topic'),
            /////////////////////////////////////////////

            Container(
              height: 226,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerColor: Color(0xffA3CCDE),
                    title: 'Design Thingking F...',
                    personName: 'Dianne Russell',
                    price: '\$75',
                    noteAboutPrice: 'Best deal',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerColor: Color(0xffFFB099),
                    title: 'Figma Prototyping 1...',
                    personName: 'Jacob Jones',
                    price: '\$32',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerColor: Color(0xffFFB099),
                    title: 'UI UX Design Essentials',
                    personName: 'Esther Howard',
                    price: '\$83',
                    noteAboutPrice: 'deal',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 226,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerColor: Color(0xffD0B2FF),
                    title: 'Flutter Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$97',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerColor: Color(0xff86F2CB),
                    title: 'Python Class - Adv...',
                    personName: 'Brooklyn Simmons',
                    price: '\$56',
                    noteAboutPrice: 'Most sold',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                  ListViewItem(
                    containerColor: Color(0xffFFEA7D),
                    title: 'Swift Class - Adv...',
                    personName: 'Cameron Williamson',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 226,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(
                    containerColor: Color(0xffFFB099),
                    title: 'Digital Marketing S...',
                    personName: 'Esther Howard',
                    price: '\$49',
                    noteAboutPrice: 'Hot deals',
                    shadeColor: Color(0xffFCE2EA),
                    noteColor: Color(0xffFF6666),
                  ),
                  ListViewItem(
                    containerColor: Color.fromARGB(255, 200, 222, 30),
                    title: 'Personal Branding F...',
                    personName: 'Savannah Nguyen',
                    price: '\$66',
                    noteAboutPrice: '',
                    shadeColor: Colors.white,
                    noteColor: Colors.white,
                  ),
                  ListViewItem(
                    containerColor: Color.fromARGB(255, 248, 174, 198),
                    title: 'Neuromarketing & Marketing Psychology ',
                    personName: 'Arlene McCoy',
                    price: '\$41',
                    noteAboutPrice: 'Label',
                    shadeColor: Color(0xffDCF3F5),
                    noteColor: Color(0xff00A9B7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
