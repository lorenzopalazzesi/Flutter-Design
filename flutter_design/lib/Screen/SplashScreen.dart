import 'package:flutter/material.dart';
import 'package:flutter_design/Animation/FadeAnimation.dart';
import 'package:flutter_design/Screen/InfoScreen_1.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoScreen_1(),
          ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(1),
          image: DecorationImage(
            image: AssetImage('assets/images/splash-back.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            FadeAnimation(1.2, Image.asset('assets/images/logo.png'),),
            SizedBox(height: 30,),
            FadeAnimation(1.4,Text("SONG CHIMP", style: TextStyle(color: Colors.white , fontSize: 18, fontWeight: FontWeight.bold),),),
            SizedBox(height: 10,),
            FadeAnimation(1.6 , Text("Let the Music Speak", style: TextStyle(color: Color(0xffFE2851), fontSize: 20),),),
          ],
        ),
      ),
    );
  }
}