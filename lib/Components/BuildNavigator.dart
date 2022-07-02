import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildnavigator({
  required String text,
  required IconData icon,
  Widget? widget,
  BuildContext? context,
}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context){
        return widget! ;
      }));
    },
    child: Column(
      children: [
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 19,vertical:22 ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0ECF8),
          ),
          child: Icon(icon,color: Color(0xFF0001FC),size: 18,),
        ),
        SizedBox(height: 8,),
        Text(
          text,
          style: TextStyle(color: Color(0xFF1F53E4),fontSize: 14,fontWeight: FontWeight.w500),),
      ],
    ),
  );
}