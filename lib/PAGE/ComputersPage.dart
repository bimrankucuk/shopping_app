import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Components/BottomNavigation.dart';
import 'package:shopping_app/Components/Header.dart';

class ComputerPage extends StatefulWidget {
  const ComputerPage({Key? key}) : super(key: key);

  @override
  State<ComputerPage> createState() => _ComputerPageState();
}

class _ComputerPageState extends State<ComputerPage> {
  List<Map> products = [
    {"name": "Surface laptop 1","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 2","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 3","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 4","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 5","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 6","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 7","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 8","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 9","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 10","price":"999","photourl":"images/laptop.png"},
    {"name": "Surface laptop 10","price":"999","photourl":"images/laptop.png"},

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
                  header(text: "Laptop",context: context),
                  SizedBox(height: 32,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 65),
                      child: GridView.count(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,children: products.map((Map product) {
                        return buildcontent(name:product["name"],price: product["price"],photourl: product["photourl"]);
                      }).toList(),),
                    ),
                  )
                ],),
            ),
            bottomNavigationBar(""),
          ],
        ),
      ),
    );



  }
}
Widget buildcontent({
  String? name,
  String? price,
  String? photourl,
}){
  return Container(
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
  );
}