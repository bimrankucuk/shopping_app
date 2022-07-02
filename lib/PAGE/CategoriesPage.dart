import 'package:flutter/material.dart';
import 'package:shopping_app/Components/BottomNavigation.dart';
import 'package:shopping_app/Components/Header.dart';
import 'package:shopping_app/PAGE/ComputersPage.dart';
import 'package:shopping_app/Components/BuildCategori.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
final List<String> categories=[
  "All",
  "Computers",
  "Accessories",
  "Smartphone",
  "Smart objects",
  "Speakers",
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header
                header(text: "Categories",context: context),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 65),
                      child: ListView(
                        children:
                        categories.map((text) => buildcategori(text: text,context:context)).toList()),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar(""),
          ],
        ),
      ),
    );
  }
}
