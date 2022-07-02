import 'package:flutter/cupertino.dart';

Widget buildcolor({Color? color,bool? select,Function? onTab }){
  return GestureDetector(
    onTap: (){
      onTab!();
    },
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: Color(0xFF0001FC),width: select! ?3:0)
      ),
      width: 23,
      height: 23,
    ),
  );
}