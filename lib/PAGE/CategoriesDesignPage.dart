import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Components/BottomNavigationBar.dart';
import 'package:shopping_app/Components/Header.dart';
import 'package:shopping_app/PAGE/ProductPage.dart';

import '../Components/BuildContetnt.dart';

class CategoriesDesignPage extends StatefulWidget {
  late String? pagetitle;


  CategoriesDesignPage(this.pagetitle);

  @override
  State<CategoriesDesignPage> createState() => _CategoriesDesignPageState();
}

class _CategoriesDesignPageState extends State<CategoriesDesignPage> {
 List<Map> products=[];
  List<Map> All = [
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Phone1","price":"999","photourl":"images/phone.png"},
    {"name": "Speaker1","price":"900","photourl":"images/speaker.png"},
    {"name": "Surface laptop 2","price":"1000","photourl":"images/laptop.png"},
    {"name": "Surface laptop 3","price":"900","photourl":"images/laptop.png"},
    {"name": "Phone2","price":"980","photourl":"images/phone.png"},
    {"name": "Speaker2","price":"990","photourl":"images/speaker.png"},
    {"name": "Surface laptop 4","price":"990","photourl":"images/laptop.png"},
 ];
  List<Map> Computers=[
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
  ];  List<Map> Speakers=[
    {"name": "Speaker","price":"900","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"901","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"902","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"903","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"904","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"999","photourl":"images/speaker.png"},
    {"name": "Speaker","price":"999","photourl":"images/speaker.png"},
  ];
 List<Map> Phone = [

   {"name": "Phone1","price":"999","photourl":"images/phone.png"},
   {"name": "Phone2","price":"980","photourl":"images/phone.png"},
   {"name": "Phone3","price":"970","photourl":"images/phone.png"},
   {"name": "Phone4","price":"960","photourl":"images/phone.png"},
   {"name": "Phone5","price":"950","photourl":"images/phone.png"},
   {"name": "Phone6","price":"940","photourl":"images/phone.png"},

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
                  header(text:widget.pagetitle!,context: context),
                  SizedBox(height: 32,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 65),
                      child: GridView.count(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,children:

                           widget.pagetitle == "All" ? All.map((Map product) {return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"],context: context);}).toList()
                          : widget.pagetitle == "Computers" ? Computers.map((Map product) {return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"],context: context);}).toList()
                               : widget.pagetitle == "Speakers" ? Speakers.map((Map product) {return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"],context: context);}).toList()
                               : widget.pagetitle == "Phone" ? Phone.map((Map product) {return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"],context: context);}).toList()
                          :  products.map((Map product) {return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"],context: context);}).toList()

                      ),
                    ),
                  )
                ],),
            ),
            bottomNavigationBar("serch",context),
          ],
        ),
      ),
    );



  }
}
