import 'package:flutter/material.dart';
import 'package:flutter_design/Animation/FadeAnimation.dart';

class InfoScreen_1 extends StatelessWidget{
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
            FadeAnimation(1.2, Text("Listen to Unlimited Music", style: TextStyle(color: Colors.white, fontSize: 20),)),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(color: Color(0xffFE2851), height: 2, thickness: 3, ),
            ),
            SizedBox(height: 10,),
            FadeAnimation(1.6 , Text("Listen to 40000+ song and 1600+ artist", style: TextStyle(color: Colors.grey, fontSize: 16),),),
            SizedBox(height: 30,),
            FadeAnimation(1.2, Image.asset('assets/images/phone.png'),),
            Divider(color: Color(0xffFE2851), height: 2, thickness: 3,),
            SizedBox(height: 40,),
            new GestureDetector(
              onTap: (){print("Skip");},
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Skip for Now", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ),
            ),
            SizedBox(height: 10,),
            new GestureDetector(
              onTap: (){print("Skip");},
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFE2851),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}