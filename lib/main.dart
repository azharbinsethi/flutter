import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testingterminal/provider/widget_checker.dart';
import 'package:testingterminal/provider/widget_checker_viewmodel.dart';
import 'package:testingterminal/splashScreen/spalsh_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testingterminal/studentlist/stdlist.dart';

void main() {
  runApp(Preactice());
}

class Preactice extends StatelessWidget {
  const Preactice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => IconButtonProvider(),
        child: ProviderExample(),
      ),
    );
    // return MaterialApp(home: StudentList(), debugShowCheckedModeBanner: false);
    // return MaterialApp(home: SpalshScreen(), debugShowCheckedModeBanner: false);
    //return MaterialApp(home: LoginScreen());
    //return MaterialApp(home: ScreenOne());
    //return MaterialApp(home: intro(), debugShowCheckedModeBanner: false);
    // return MaterialApp(home: HomeScreen());
  }
}
