import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/gridView.dart';

import '../widgets/appBar_widgets/SearchTextButton.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff00A9B7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xff00A9B7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  const SearchTextButton(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            GridWidget(),
          ],
        ),
      ),
    );
  }
}
