import 'package:flutter/material.dart';
import 'package:testingterminal/DeliverTo/Edit.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(left: 10, top: 30),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.arrow_back_ios, color: Colors.black, size: 17),
              SizedBox(width: 16),
              Text(
                'Deliver to',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                label: Text('search location'),
                fillColor: Colors.grey.shade300,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.home, size: 28),
              SizedBox(width: 22),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Satya Nilayam',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '21-42-34,Banjara Hills,Hyderabad\n500072',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.location_on, size: 28),
              SizedBox(width: 22),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '21-42-34,Banjara Hills,Hyderabad\n500072',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.search, size: 28),
              SizedBox(width: 22),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Look up the Map',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 223,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Text(
                        'Saved Addresses',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 80),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => EditLocation(),
                          );
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(Icons.edit, size: 20, color: Colors.grey.shade600),
                    ],
                  ),
                ),
                SizedBox(height: 30, width: 30),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(offset: Offset(2, 2), blurRadius: 2),
                        ],
                      ),

                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.home, size: 40),
                          Text(
                            'HOME',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(offset: Offset(2, 2), blurRadius: 2),
                        ],
                      ),

                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.local_post_office, size: 40),
                          Text(
                            'OFFICE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
