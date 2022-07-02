import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../PAGE/ProductPage.dart';

Widget buildcontent({
  String? name,
  String? price,
  String? photourl,
  BuildContext? context,
}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context)=>ProductPage(name!,photourl!,price!)));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0,16)
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Container(
              width: 120,
              height: 69,
              child: Image.asset(photourl!)),
          SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name!,style: TextStyle(color: Color(0xFF0A1034),fontSize:16,fontWeight: FontWeight.w500 ),),
              Text("USD ${price}",style: TextStyle(color: Color(0xFF0001FC),fontSize:12,fontWeight: FontWeight.w500 ),),
            ],
          ),
        ],
      ),
    ),
  );
}
