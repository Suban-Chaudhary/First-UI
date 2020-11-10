import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.shop, color: Colors.pink[100]),
          SizedBox(width: 25),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("LENS", style: normalTextStyle(Colors.grey[700])),
                  Text("Frames", style: normalTextStyle(Colors.white70)),
                  Text("Offer", style: normalTextStyle(Colors.grey[700])),
                  Text("Special", style: normalTextStyle(Colors.grey[700])),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Get Awesome Glasses",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 150,
              width: 350,
              child: Image.asset(
                'images/glass.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 28),
                Icon(Icons.star, color: Colors.yellow, size: 26),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_half, color: Colors.yellow),
              ],
            ),
            SizedBox(height: 35),
            Container(
                child: Divider(color: Colors.white54, thickness: 1),
                padding: EdgeInsets.symmetric(horizontal: 15)),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildImageContainer(),
                buildImageContainer(),
                buildImageContainer(),
              ],
            ),
            SizedBox(height: 55),
            Text(
              "@Copyright 2020",
              style: normalTextStyle(Colors.grey[350]),
            )
          ],
        ),
      ),
    );
  }

  TextStyle normalTextStyle(color) {
    return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600);
  }

  Widget buildImageContainer() {
    return Container(
      child: Image.asset("images/showcase.png"),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange[200]),
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.orange[50],
      ),
    );
  }
}
