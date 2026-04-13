import 'package:flutter/material.dart';
import 'package:testingterminal/Login/login.dart';
import 'package:testingterminal/splashScreen/spalsh_screen.dart';

void main() {
  runApp(Preactice());
}

class Preactice extends StatelessWidget {
  const Preactice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SpalshScreen(), debugShowCheckedModeBanner: false);
    //return MaterialApp(home: LoginScreen());
    //return MaterialApp(home: ScreenOne());
    //return MaterialApp(home: intro(), debugShowCheckedModeBanner: false);
    // return MaterialApp(home: HomeScreen());
  }
}
