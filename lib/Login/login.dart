import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Container(
              width: double.infinity,

              //height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Image.asset('assets/image/logo.png', fit: BoxFit.cover),

                  TabBar(
                    indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.symmetric(horizontal: 60),
                      borderSide: BorderSide(color: Colors.red, width: 3),
                    ),
                    tabs: [
                      Tab(text: 'Login'),
                      Tab(text: 'Signup'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Enter your Email/Phone number'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Enter your Password'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "Forget password?",
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                        SizedBox(height: 13),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            fixedSize: Size(330, 45),
                          ),
                          child: Text(
                            'LogIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Center(
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                fixedSize: Size(330, 45),
                              ),
                              onPressed: () {},

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 30),
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Login With Facebook",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: Size(330, 45),
                              ),
                              onPressed: () {},

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 30),
                                  Image.asset('assets/image/Google.png'),
                                  SizedBox(width: 20),
                                  Text(
                                    "Login With google",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 70),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset('assets/image/Google.png'),
                            ),

                            SizedBox(width: 10),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.facebook,
                                color: Colors.blueAccent,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Full Name'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Mobile Number'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Password'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        TextField(
                          decoration: InputDecoration(
                            label: Text('Confirm Password'),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                        SizedBox(height: 13),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                  fixedSize: Size(170, 50),
                                ),
                                child: Text(
                                  'Sign-up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Already a \n Member? Login',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
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
            ),
          ],
        ),
      ),
    );
  }
}
