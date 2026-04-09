import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Icon(Icons.person_2),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.notification_add, color: Colors.black),
          SizedBox(width: 10),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Precitices',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text(
                textAlign: TextAlign.center,
                'hello world',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
