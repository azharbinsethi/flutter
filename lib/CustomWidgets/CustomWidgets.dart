import 'package:flutter/material.dart';

class Skiptext extends StatelessWidget {
  const Skiptext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 280),

      child: Text(
        'Skip>>',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white60,
        ),
      ),
    );
  }
}

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 30),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset('assets/image/logo.png', fit: BoxFit.cover),
      ),
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,

            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey,
                  offset: Offset(5, 5),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/image/logo.png', fit: BoxFit.cover),
              ],
            ),
          ),
          SizedBox(height: 80),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "Forgot\nPassword?",
              style: TextStyle(color: Colors.deepOrange, fontSize: 30),
            ),
          ),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                label: Text('Enter your email address'),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
