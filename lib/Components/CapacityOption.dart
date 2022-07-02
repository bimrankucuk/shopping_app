import 'package:flutter/cupertino.dart';

Widget capacityoption({
  int? capacty,
  bool? selected,
  Function? onTab,
}){
  return GestureDetector(
    onTap: (){
      onTab!();
    },
    child: Container(
        margin: EdgeInsets.only(right:23 ),
        child: Text("$capacty gb",style: TextStyle(color: Color( selected! ?0xFF0001FC:0xFFA7A9BE),fontSize: 16),)),
  );
}