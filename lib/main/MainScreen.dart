import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatelessWidget {
  final PageController _controller = PageController();
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _DrawerWidget(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        //leading: Icon(Icons.home),
        actions: [_favIconButton(), SizedBox(width: 10)],

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
          _selectPreferences(controller: _controller),
        ],
      ),
    );
  }
}

class _selectPreferences extends StatelessWidget {
  const _selectPreferences({super.key, required PageController controller})
    : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: _controller,
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
          Center(
            child: SmoothPageIndicator(
              controller: _controller, // Wahi controller jo PageView mein hai
              count: 3, // Aapke containers ki tadad
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _favIconButton extends StatelessWidget {
  const _favIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.green,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Favourite',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(
              'Are you Sure you want to add it to your favourite bucket',
              style: TextStyle(fontSize: 18),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Proceed'),
              ),
            ],
          ),
        );
      },
      icon: Icon(Icons.favorite),
    );
  }
}

class _DrawerWidget extends StatelessWidget {
  const _DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: Text(
              "Azhar ali",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("azhar.ali158@email.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.green),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('this is text')),
        ],
      ),
    );
  }
}
