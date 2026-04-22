import 'package:flutter/material.dart';
import 'package:testingterminal/splashScreen/spalsh_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
