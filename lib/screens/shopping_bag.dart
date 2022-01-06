import 'package:flutter/material.dart';
import 'package:tryvirtually/screens/home_page.dart';
import 'package:tryvirtually/screens/search.dart';
import 'package:tryvirtually/screens/signin.dart';

import 'WebView.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({Key? key}) : super(key: key);

  @override
  _ShoppingBag createState() => _ShoppingBag();
}

class _ShoppingBag extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Text(
              "Shopping Bag",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black, // add custom icons also
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(right: 10)),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFFffffff),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Search'),
                icon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListSearch()));
                  },
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Try Virtually'),
                icon: IconButton(
                  icon: Icon(
                    Icons.camera_rear_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebView()));
                  },
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Favourites'),
                icon: IconButton(
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShoppingBag()));
                  },
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
            ]));
  }
}
