import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 23),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 260,
                  height: 50,
                  padding: EdgeInsets.only(left: 10),

                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text('Fried Rice', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  margin: EdgeInsets.only(left: 10, top: 23),
                  width: 50,
                  height: 50,
                  child: Icon(Icons.shopping_cart),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 7,
                children: [
                  Padding(padding: EdgeInsets.only(top: 60, left: 10)),

                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.white),
                      ),
                    ),

                    onPressed: () {},
                    child: Text(
                      'Rescued',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.white),
                      ),
                    ),

                    onPressed: () {},
                    child: Text('Vegan', style: TextStyle(color: Colors.white)),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.white),
                      ),
                    ),

                    onPressed: () {},
                    child: Text(
                      'Delivery',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.white),
                      ),
                    ),

                    onPressed: () {},
                    child: Text(
                      '>100Cal',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        BorderSide(color: Colors.white),
                      ),
                    ),

                    onPressed: () {},
                    child: Text(
                      'Popular',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,

                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,

                              // borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Icon(Icons.search, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Food Delivery',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('--Delivery'),
                                ],
                              ),
                              Text(
                                'Dish',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
