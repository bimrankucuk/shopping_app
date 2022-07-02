import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/PAGE/CategoriesDesignPage.dart';

Widget buildcategori({
  required String text,
  BuildContext? context,
}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context)=>CategoriesDesignPage(text)));

    },
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 4,
          offset: Offset(0,4),
        )],
      ),
      child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF0A1034)),),
    ),
  );
}