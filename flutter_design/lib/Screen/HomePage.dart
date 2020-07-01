import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu , color: Colors.white, size: 30,),
          onPressed: (){},
      ),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Discover the Events" , style: TextStyle(color: Colors.white , fontSize: 25,),),
                  SizedBox(height: 5,),
                  Text("Around You" , style: TextStyle(color: Colors.white , fontSize: 40,),),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search , color: Colors.black,),
                        hintText: "Search an Event",
                        hintStyle: TextStyle(fontSize: 18 , color: Colors.grey)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text(
                    "Gli eventi di oggi",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget> [
                        eventCard(''),
                        eventCard(''),
                        eventCard(''),
                        eventCard(''),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget eventCard(image){
    return AspectRatio(
      aspectRatio: 2.5 /3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/one.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}