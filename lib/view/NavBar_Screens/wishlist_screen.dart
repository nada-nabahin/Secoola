import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/container_under_appbar.dart';

import '../widgets/appBar_widgets/SearchTextButton.dart';
import '../widgets/gridView.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xff00A9B7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          const ContainerUnderAppbar(),
          Expanded(
            child: GridWidget(),
          ),
        ],
      ),
    );
  }
}
