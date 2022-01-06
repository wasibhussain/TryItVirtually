import 'package:flutter/material.dart';

import 'package:tryvirtually/screens/signin.dart';

import '../home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Details(),
    );
  }
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/ts1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), primary: Colors.black),
                            child: Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), primary: Colors.white),
                            child: Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 23,
                                  color: Colors.black,
                                )),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 250, left: 280),
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(), primary: Colors.white),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 23,
                                    color: Colors.black,
                                  )),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      //bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Winter Huddi",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Dollor 250",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text("(Price inc.21% VAT)"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Choose Size",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(), primary: Colors.black),
                              child: Container(
                                width: 25,
                                height: 25,
                                alignment: Alignment.center,
                                decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                                padding: EdgeInsets.only(left: 5),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "L",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "XL",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), primary: Colors.grey),
                            child: Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              padding: EdgeInsets.only(left: 5),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Details",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color(0xff6B8E23)),
                            child: Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              padding: EdgeInsets.only(left: 5),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Search T Shirts Florida, Information from Trusted Internet Sources. Explore the Best Info Now. 100+ Unique Results. Find All Info You Want. Quick Answers. Useful & Relevant. Find in Seconds. Services: Secure Search, No.1 Answers, Trusted Results, 99% Match."),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFffffff),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Home',
              ),
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Favourites'),
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
              ),
            ),
          ]),
    );
  }
}
