import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.home),
        actions: [Icon(Icons.favorite), SizedBox(width: 10)],

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '21-42-34, Banjara Hills, Hyder....',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),

              SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'search for food nearby',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color.fromARGB(255, 48, 48, 48),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(59, 50),
                  //fixedSize: Size(50, 50),
                  side: BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.31),
                  ),
                ),

                onPressed: () {},
                child: Icon(Icons.filter_alt, color: Colors.green, size: 20),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
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
