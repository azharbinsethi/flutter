import 'package:flutter/material.dart';
import 'package:testingterminal/main/MainScreen.dart';

class SearchTwo extends StatelessWidget {
  const SearchTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Container(
                width: 270,
                margin: EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Search Food Nearby'),

                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: Icon(Icons.filter_alt_rounded),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text('Vegan', style: TextStyle(color: Colors.white)),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Delivery',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text(
                    '>100 Cal',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text('Popular', style: TextStyle(color: Colors.white)),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text('Desi', style: TextStyle(color: Colors.white)),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Chineese',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 562,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Image.asset('assets/image/menu.png'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
