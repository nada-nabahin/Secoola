import 'package:flutter/material.dart';

class TabBarVieWidget extends StatefulWidget {
  final String tabLabel;
  final String tabLabel2;

  const TabBarVieWidget({
    Key? key,
    required this.tabLabel,
    required this.tabLabel2,
  }) : super(key: key);

  @override
  State<TabBarVieWidget> createState() => _TabBarVieWidgetState();
}

class _TabBarVieWidgetState extends State<TabBarVieWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            width: 335,
            decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
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
                          child: Text(widget.tabLabel),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 158,
                          height: 38,
                          alignment: Alignment.center,
                          child: Text(widget.tabLabel2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
