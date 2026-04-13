import 'package:flutter/material.dart';

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
          TextFormField(
            decoration: InputDecoration(fillColor: Colors.grey.shade300),
          ),
        ],
      ),
    );
  }
}
