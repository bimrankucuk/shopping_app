import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Components/BottomNavigationBar.dart';
import '../Components/BuildColor.dart';
import '../Components/CapacityOption.dart';
import '../Components/Header.dart';

class ProductPage extends StatefulWidget {

  late String producttitle;
  late String producphotourl;
  late  String productprice;


  ProductPage(this.producttitle, this.producphotourl, this.productprice);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int? selectedcapacity=64;
  Color? colorcontrol;
  List<Map> cartlist=[];
 List<int> capacities=[64, 256, 512];
  List<Color> colors=[
    Color(0xFF52514F),
    Color(0xFF0001FC),
    Color(0xFF6F7972),
    Color(0xFFF5D8C0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Header
                    header(text:widget.producttitle,context: context),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0ECF8),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Text("New",style:TextStyle(color: Color(0xFF1F53E4),fontSize: 12),)),
                              SizedBox(height: 22),
                              Center(
                                child: Container(
                                  width: 200,
                                  child: Image.asset(widget.producphotourl),
                                ),
                              ),
                              SizedBox(height: 22),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Color",style: TextStyle(
                      fontSize: 18,
                        fontWeight: FontWeight.w600,
                      color: Color(0xFF0A1034),
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: colors.map((Color color) => buildcolor(color:color,select: colorcontrol==color,onTab: (){
                        setState((){
                          colorcontrol=color;
                        });
                      })).toList(),

                    ),
                    SizedBox(height: 32,),
                    Text("Capacty",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0A1034),
                    ),),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: capacities.map((int number) =>capacityoption(
                          capacty: number,
                          selected:selectedcapacity==number,
                          onTab: (){
                        setState((){
                          selectedcapacity=number;
                        });
                      }) ).toList(),
                    ),
                    SizedBox(height: 32,),
                    Center(
                      child: Text("Price : Usd ${widget.productprice}",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A1034),
                      ),),
                    ),
                    SizedBox(height: 32,),
                    GestureDetector(
                      onTap: (){
                        print("ürün name:${widget.producttitle}");
                        print("ürün photo:${widget.producphotourl}");
                        cartlist.add(
                          {"name": "${widget.producttitle}","price":"${widget.productprice}","photourl":"${widget.producphotourl}"}
                        );

                      },
                      child: Container(
                        width: double.infinity,
                        padding:EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFF1F53E4)
                        ),
                        child: Text("Add to cart",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: 65,),

                  ],
                ),
              ),
            ),

            bottomNavigationBar("serch", context)
          ],
        ),
      ),
    );
  }
}

