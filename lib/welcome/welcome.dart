import 'package:flutter/material.dart';
import 'package:testingterminal/CustomWidgets/CustomWidgets.dart';
import 'package:testingterminal/DeliverTo/DeliverTo.dart';
import 'package:testingterminal/HomeScreen/HomeScreen.dart';
import 'package:testingterminal/home/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScren()),
              );
            },
            child: Skiptext(),
          ),
          logo(),
          SizedBox(height: 30),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Welcome\nSumanya!',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Unlock the world of regular\nand rescued food by setting up \nyour delivery address',
              style: TextStyle(color: Colors.white60, fontSize: 20),
            ),
          ),
          //Image.asset('assets/image/3.png'),
          SizedBox(height: 80),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              textAlign: TextAlign.start,
              'SELECT LOCATION',
              style: TextStyle(fontSize: 20, color: Colors.white60),
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 30),
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.search),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Locate me',
                    style: TextStyle(fontSize: 20, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 30),
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.location_on_outlined),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => DeliverTo(),
                    );
                  },
                  child: const Text(
                    'Provide Delivery Location',
                    style: TextStyle(fontSize: 20, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
