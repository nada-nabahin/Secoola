import 'package:flutter/material.dart';
import 'package:secoola_app/widgets/NavBar_Screens/account_screen.dart';
import 'package:secoola_app/widgets/NavBar_Screens/explore_screen.dart';
import 'package:secoola_app/widgets/NavBar_Screens/myCourse_screen.dart';
import 'package:secoola_app/widgets/NavBar_Screens/whishlist_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    ExploreScreen(),
    MyCourseScreen(),
    WishlistScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'My course',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    );
  }
}
