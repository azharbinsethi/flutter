import 'package:flutter/material.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70, left: 260),

            child: Text(
              'Skip >> ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/image/one.png', fit: BoxFit.cover),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Save Food \n With Our New \n Feature",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: Image.asset('assets/image/3.png'),
          ),
          Container(),
        ],
      ),
    );
  }
}
