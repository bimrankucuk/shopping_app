import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'BuildNavIcon.dart';

Widget bottomNavigationBar(String page){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          offset: Offset(0,-3),
          color: Colors.black.withOpacity(0.25),
          blurRadius: 10,
        ),
        ],
        color: Color(0xFFEFF5FB),
      ),
      padding: EdgeInsets.only(top: 20,bottom: 20,),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildnavicon(active: page=="home", icon: FontAwesomeIcons.house, ),
          buildnavicon(active: page=="serch", icon: FontAwesomeIcons.magnifyingGlass),
          buildnavicon(active: page=="cart", icon: FontAwesomeIcons.cartShopping),
          buildnavicon(active: page=="profile", icon: FontAwesomeIcons.person),
        ],
      ),
    ),
  );
}