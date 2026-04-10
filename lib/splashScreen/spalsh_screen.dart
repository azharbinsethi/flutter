import 'package:flutter/material.dart';
import 'package:testingterminal/Login/login.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image/splash.png', fit: BoxFit.cover),
          Center(
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },

                child: Image.asset('assets/image/logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
