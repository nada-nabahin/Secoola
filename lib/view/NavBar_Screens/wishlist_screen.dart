import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/appBar.dart';
import 'package:secoola_app/view/widgets/gridView.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        appBar(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridWidget(),
        ),
      ],
    ));
  }
}
