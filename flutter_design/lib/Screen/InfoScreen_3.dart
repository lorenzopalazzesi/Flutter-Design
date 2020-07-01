import 'package:flutter/material.dart';
import 'package:flutter_design/Animation/FadeAnimation.dart';

class InfoScreen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 10,),
            FadeAnimation(1.2, Text("Search With Voice", style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: FadeAnimation(1.4,Divider(color: Color(0xffFE2851), height: 2, thickness: 3, ),),
            ),
            SizedBox(height: 10,),
            FadeAnimation(1.6 , Text("Service will identify any music playing around you", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 16,),),),
            SizedBox(height: 30,),
            FadeAnimation(1.8, Image.asset('assets/images/phone_3.png'),),
            FadeAnimation(2.0, Divider(color: Color(0xffFE2851), height: 2, thickness: 3,),),
            SizedBox(height: 100,),
            new GestureDetector(
              onTap: (){},
              child: FadeAnimation(2.2 , Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFE2851),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}