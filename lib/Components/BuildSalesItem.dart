import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildsalesitems({
  required String text,
  required String discount,
  required String photourl,
  required var screenwidth,
}){
  return Container(
    width:  (screenwidth-60)*0.5,
    padding: EdgeInsets.only(left: 12,right:12 ,top:12 ,bottom:21 ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xFFE0ECF8),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text(discount,style:TextStyle(color: Color(0xFF1F53E4),fontSize: 12),)),
        SizedBox(height: 22),
        Center(
          child: Container(
            width: 67,
            height: 60,
            child: Image.asset(photourl),
          ),
        ),
        SizedBox(height: 22),
        Center(child: Text(text,style: TextStyle(fontSize: 18,color: Color(0xFF0A1034)),))
      ],
    ),
  );
}