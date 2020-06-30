import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
      )
    );
    


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[800],
              Colors.orange[600],
              Colors.orange[400]
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: 60,),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.orange[100],
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )],
                        ),
                        child: Column(
                          children: <Widget> [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[300]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or Username",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange[800],
                              Colors.orange[600],
                              Colors.orange[400],
                              ],
                          ),
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
                        )
                      ),
                      SizedBox(height: 30,),
                      Text("Forgot Password?", style:TextStyle(color: Colors.grey, fontSize:14 ) ,),
                      SizedBox(height:60,),
                      Row(
                        children:<Widget> [
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                              ),
                              child:
                                  Center(
                                    child: Icon(FontAwesomeIcons.facebook, size: 30, color: Colors.white,)
                            ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green
                              ),
                              child:
                                  Center(
                                    child: Icon(FontAwesomeIcons.google, size: 30, color: Colors.white,)
                            ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
