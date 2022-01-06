import 'package:flutter/material.dart';
import 'package:tryvirtually/screens/home_page.dart';
import 'package:tryvirtually/screens/widgets/image_controller.dart';

import '../signin.dart';

class Hoodies extends StatefulWidget {
  const Hoodies({Key? key}) : super(key: key);

  @override
  _Hoodies createState() => _Hoodies();
}

class _Hoodies extends State<Hoodies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Try Virtually",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // SizedBox(height: 25),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageButton(
                          title: "Graphic Hoodie",
                          imagePath: "assets/h1.jpg",
                          onclicking: () {}),
                      ImageButton(
                          title: 'Hooded Sweatshirt',
                          imagePath: "assets/h2.jpg",
                          onclicking: () {}),
                    ]),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageButton(
                          title: 'Zipper Sweatshirt Hood',
                          imagePath: "assets/h3.jpg",
                          onclicking: () {}),
                      ImageButton(
                          title: 'Fabric Hoodie',
                          imagePath: "assets/h4.jpg",
                          onclicking: () {}),
                    ]),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageButton(
                          title: ' Fit Zipper Sweatshirt',
                          imagePath: "assets/h5.jpg",
                          onclicking: () {}),
                      ImageButton(
                          title: 'Gaming Hoodie',
                          imagePath: "assets/h6.jpg",
                          onclicking: () {}),
                    ]),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageButton(
                          title: 'Graphic Hoodie',
                          imagePath: "assets/h1.jpg",
                          onclicking: () {}),
                      ImageButton(
                          title: 'Hooded Sweatshirt',
                          imagePath: "assets/h2.jpg",
                          onclicking: () {}),
                    ]),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageButton(
                          title: 'Zipper Sweatshirt Hood',
                          imagePath: "assets/h3.jpg",
                          onclicking: () {}),
                      ImageButton(
                          title: 'Fabric Hoodie',
                          imagePath: "assets/ts4.jpg",
                          onclicking: () {}),
                    ]),
              ],
            ),
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
                icon: IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                )),
            BottomNavigationBarItem(
              title: Text('Sales Orders'),
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Items'),
              icon: Icon(
                Icons.shopping_basket_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Packages'),
              icon: Icon(
                Icons.bookmark_add_outlined,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
                title: Text('More'),
                icon: IconButton(
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                ))
          ]),
    );
  }
}
