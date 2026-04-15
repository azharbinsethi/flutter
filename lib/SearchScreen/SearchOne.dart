import 'package:flutter/material.dart';
import 'package:testingterminal/SearchScreen/SearchTwo.dart';

class SearchOne extends StatelessWidget {
  const SearchOne({super.key});

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
                      MaterialPageRoute(builder: (context) => SearchTwo()),
                    );
                  },
                  child: Icon(Icons.filter_alt_rounded),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 585,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  'Recent Searches',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.search, size: 15),
                    SizedBox(width: 10),
                    Text(
                      'Pizza',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.search, size: 15),
                    SizedBox(width: 10),
                    Text(
                      'Pizza Hut',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.search, size: 15),
                    SizedBox(width: 10),
                    Text(
                      'Chocolate waffles',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Text(
                  'Popular Cuisines',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/popular.png',
                      height: 100,
                      width: 320,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 13),
                    Text(
                      'Daily Meals',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(width: 28),
                    Text(
                      'Middle\nEastern',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(width: 28),
                    Text(
                      'Chineese',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(width: 32),
                    Text(
                      'Desi',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
