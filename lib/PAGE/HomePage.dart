import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/Components/BottomNavigation.dart';
import 'package:shopping_app/PAGE/CategoriesPage.dart';
import '../Components/BuildBanner.dart';
import '../Components/BuildBaslik.dart';
import '../Components/BuildNavigator.dart';
import '../Components/BuildSalesItem.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> products =[
    {"text": "Smartphones 1", "discount": "-50%", "photourl": "images/phone.png"},
    {"text": "Smartphones 2", "discount": "-50%", "photourl": "images/phone.png"},
    {"text": "Smartphones 3", "discount": "-50%", "photourl": "images/phone.png"},
    {"text": "Smartphones 4", "discount": "-50%", "photourl": "images/phone.png"},
  ];
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //başlık
                  buildbaslik(),
                  //banner
                  buildbanner(),
                  //button
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildnavigator(text: "Catagories", icon: FontAwesomeIcons.bars,widget: CategoriesPage(),context: context),
                        buildnavigator(text: "Favorites", icon: FontAwesomeIcons.star),
                        buildnavigator(text: "Gifts", icon: FontAwesomeIcons.gift),
                        buildnavigator(text: "Best selling", icon: FontAwesomeIcons.peopleGroup),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  //sales title
                  Center(child: Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xFF0A1034)),)),
                  SizedBox(height: 16,),
                  //sales items
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildsalesitems(text: "Smartphones", discount: "-50%", photourl: "images/phone.png", screenwidth: screenwidth),
                      buildsalesitems(text: "Smartphones", discount: "-50%", photourl: "images/phone.png", screenwidth: screenwidth),
                    ],
                  ),*/
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 65),
                     child: GridView.count(
                       crossAxisSpacing: 15,
                       mainAxisSpacing: 15,
                       crossAxisCount: 2,
                       children: products.map((Map produc) =>
                           buildsalesitems(text: produc["text"], discount: produc["discount"], photourl: produc["photourl"], screenwidth: screenwidth),).toList(),
                     ),
                   ),
                 ),
                ],
              ),
            ),
            //button navigation bar
            bottomNavigationBar("home"),
          ],
        ),
      ),
    );
  }
}






