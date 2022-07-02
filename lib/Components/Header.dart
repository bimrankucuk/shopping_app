import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget header({
  required String text,
   context,
}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 29,),
      GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(FontAwesomeIcons.arrowLeft,size: 27,color: Color(0xFF0A1034),)),
      SizedBox(height: 24,),
      Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF0A1034)),),
      SizedBox(height: 16,),
    ],
  );
}