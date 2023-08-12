import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/appBarContainer.dart';
import 'package:secoola_app/view/widgets/gridView.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Row(
            children: [
              Text(
                'Wishlist',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          appBar(
            appBarTitle: '',
          ),
          Expanded(
            child: GridWidget(),
          ),
        ],
      ),
    );
  }
}
