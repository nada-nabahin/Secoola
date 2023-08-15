import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/curriculam_item.dart';

class TabBarVieWidget extends StatefulWidget {
  // final String tabLabel;
  // final String tabLabel2;

  // const TabBarVieWidget({
  //   Key? key,
  //   required this.tabLabel,
  //   required this.tabLabel2,
  // }) : super(key: key);

  @override
  State<TabBarVieWidget> createState() => _TabBarVieWidgetState();
}

class _TabBarVieWidgetState extends State<TabBarVieWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              indicatorColor: const Color(0xff00A9B7),
              indicator: BoxDecoration(
                color: const Color(0xff00A9B7),
                borderRadius: BorderRadius.circular(15),
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: 158,
                    height: 38,
                    alignment: Alignment.center,
                    child: const Text("Curriculum"),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 158,
                    height: 38,
                    alignment: Alignment.center,
                    child: const Text("Review"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 264,
              width: double.infinity,
              child: TabBarView(
                controller: tabController,
                children: [
                  //Curriculum
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CurriculumItem(
                          title: 'Introduction',
                          duration: '00.53 mins',
                        ),
                        CurriculumItem(
                          title: 'Design Thingking in Product',
                          duration: '05.25 mins',
                        ),
                        CurriculumItem(
                          title: 'Improving Design Method',
                          duration: '05.36 mins',
                        ),
                      ],
                    ),
                  ),

                  //ٌReview
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Student reviews',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,
                                        color: Color(0xffFFCD4C), size: 12),
                                    Icon(Icons.star,
                                        color: Color(0xffFFCD4C), size: 12),
                                    Icon(Icons.star,
                                        color: Color(0xffFFCD4C), size: 12),
                                    Icon(Icons.star,
                                        color: Color(0xffFFCD4C), size: 12),
                                    Icon(Icons.star,
                                        color: Color(0xffFFCD4C), size: 12),
                                    Text('  4.8 out of 5'),
                                  ],
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text('Sort by'),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFEA7D),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Reviewer Username'),
                                Text('1 day ago'),
                              ],
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Container(
                              width: 67,
                              height: 32,
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
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          textAlign: TextAlign.left,
                          'Description this is a simple description that explain\n the description about the class or blabla bla.',
                          style: TextStyle(
                            color: Color(0xffA9AEB2),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
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
