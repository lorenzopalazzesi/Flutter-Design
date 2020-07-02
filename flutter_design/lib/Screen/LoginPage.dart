import 'package:flutter/material.dart';
import 'package:flutter_design/Animation/FadeAnimation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FadeAnimation(1.2,
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage('assets/images/login_background.png'), fit: BoxFit.cover ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(top: 80, left: 50, right: 50),
                child: Column(
                  children:<Widget> [
                    Image.asset('assets/images/logo.png'),
                    SizedBox(height: 15,),
                    FadeAnimation(1.4,Text("SONG CHIMP", style: TextStyle(color: Colors.white , fontSize: 18, fontWeight: FontWeight.bold),),),
                    SizedBox(height: 80,),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[300].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: "Username",
                            border: InputBorder.none,
                            prefixIcon: Icon(FontAwesomeIcons.user , color: Color(0xffFE2851), size: 20,)
                          ),
                        ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[300].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            suffixIcon: Icon(FontAwesomeIcons.eye, color: Colors.grey, size: 20,),
                            hintText: "Password",
                            border: InputBorder.none,
                            prefixIcon: Icon(FontAwesomeIcons.key , color: Color(0xffFE2851),size: 20,)
                          ),
                        ),
                      ),
                    SizedBox(height: 30,),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xffFE2851),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white,fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Forgot Password?", style: TextStyle(color: Colors.white, fontSize: 14),),
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Divider( color: Colors.white , thickness: 2, height: 4,),
                        )),
                        Text("OR" , style: TextStyle(color: Colors.white, fontSize: 16),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Divider( color: Colors.white , thickness: 2, height: 4,),
                        )),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.transparent,
                          child: Center(
                            child: IconButton(icon: Icon(FontAwesomeIcons.facebook , color: Color(0xffFE2851), size: 40,), onPressed: null),
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.transparent,
                          child: Center(
                            child: IconButton(icon: Icon(FontAwesomeIcons.instagram , color: Color(0xffFE2851), size: 40,), onPressed: null),
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.transparent,
                          child: Center(
                            child: IconButton(icon: Icon(FontAwesomeIcons.twitter , color: Color(0xffFE2851), size: 40,), onPressed: null),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?", style: TextStyle(color: Colors.white),),
                        SizedBox(width: 8,),
                        Text("Register", style: TextStyle(color: Color(0xffFE2851)),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}