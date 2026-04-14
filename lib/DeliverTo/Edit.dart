import 'package:flutter/material.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        children: [
          SizedBox(height: 5),
          Container(
            height: 400,
            width: 400,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/image/map.png', fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.arrow_back_ios, color: Colors.black, size: 17),
                      SizedBox(width: 5),
                      Text(
                        'Deliver to',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 20),
            height: 194,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.home, size: 28),
                    SizedBox(width: 22),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Satya Nilayam',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 90),

                            Icon(Icons.edit),
                          ],
                        ),
                        Text(
                          '21-42-34,Banjara Hills,Hyderabad\n500072',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 60),
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Confirm Location',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
