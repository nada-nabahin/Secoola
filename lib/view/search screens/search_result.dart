import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/gridView.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              SearchTextField(searchIcon: Icons.clear, searchText: 'UX Design'),
              const SizedBox(
                height: 25,
              ),
              const Text(
                textAlign: TextAlign.left,
                'Showing search result for “UX Design”',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffA9AEB2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      side: BorderSide(color: Color(0xff00A9B7)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter,
                            color: Color(0xff00A9B7),
                          ),
                          Text(
                            '   Filter',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff00A9B7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      side: BorderSide(color: Color(0xff00A9B7)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sort_outlined,
                            color: Color(0xff00A9B7),
                          ),
                          Text(
                            '   Sort',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff00A9B7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              GridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
