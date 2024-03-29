import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool lock=true;
  @override
  Widget build(BuildContext context) {
    var ekranBilgi = MediaQuery.of(context);
    final ekranGenislik=ekranBilgi.size.width;
    final ekranYukseklik=ekranBilgi.size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Center(child: Image.asset("images/loginpage.png")),
                        )
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(bottom:Radius.circular(50))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50,right: 50,bottom: 5),
                        child: TabBar(
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: Colors.black,
                            indicatorColor: Colors.yellow[700],
                            tabs: [
                              Tab(text: "     SignUp     ",),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Tab(text: "     Login      ",)),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      cursorColor: Colors.yellow[700],
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: "NAME",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Container(
                            width: 30,
                            height: 30,
                            color: Colors.yellow[700],
                            child: Icon(FontAwesomeIcons.circleUser,color: Colors.white,size: 20,)),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      cursorColor: Colors.yellow[700],
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: "SURNAME",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Container(
                            width: 30,
                            height: 30,
                            color: Colors.yellow[700],
                            child: Icon(FontAwesomeIcons.circleUser,color: Colors.white,size: 20,)),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      cursorColor: Colors.yellow[700],
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: "EMAİL",
                        labelStyle: TextStyle(color: Colors.black),
                        icon: Container(
                            width: 30,
                            height: 30,
                            color: Colors.yellow[700],
                            child: Icon(FontAwesomeIcons.envelope,color: Colors.white,size: 20,)),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      obscureText: lock,
                      cursorColor: Colors.yellow[700],
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              onTap: (){
                                setState((){
                                  if(lock==false){
                                    lock=true;
                                  }
                                  else if (lock==true){
                                    lock=false;

                                  }
                                });
                              },
                              child: Icon(FontAwesomeIcons.eye,color: Colors.yellow[700],)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(color: Colors.black),
                          icon: Container(
                              width: 30,
                              height: 30,
                              color: Colors.yellow[700],
                              child: Icon(FontAwesomeIcons.lock,color: Colors.white,size: 20,))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Are you a member?"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left:30,right: 30),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Colors.yellow[700],
                      ),
                    ),
                  ),
                  Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text("Do you have an account?"),
                        FlatButton(onPressed: (){
                          Navigator.pop(context);
                        },child: Text("Login"),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
