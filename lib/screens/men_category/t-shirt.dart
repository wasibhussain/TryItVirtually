import 'package:flutter/material.dart';
import 'package:tryvirtually/screens/home_page.dart';
import 'package:tryvirtually/screens/men_category/men_category_details.dart';
import 'package:tryvirtually/screens/widgets/image_controller.dart';

import '../WebView.dart';
import '../search.dart';
import '../signin.dart';

class TShirt extends StatefulWidget {
  const TShirt({Key? key}) : super(key: key);

  @override
  _TShirt createState() => _TShirt();
}

class _TShirt extends State<TShirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Try Virtually",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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
                            title: "Full Sleeves Tee",
                            imagePath: "assets/ts1.jpg",
                            onclicking: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Details()));
                            }),
                        ImageButton(
                            title: 'Relax Fit Tee',
                            imagePath: "assets/ts2.jpg",
                            onclicking: () {}),
                      ]),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageButton(
                            title: 'Fit Tie-Dye Tee',
                            imagePath: "assets/ts3.jpg",
                            onclicking: () {}),
                        ImageButton(
                            title: 'Fit Basic Tee',
                            imagePath: "assets/ts4.jpg",
                            onclicking: () {}),
                      ]),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageButton(
                            title: 'Tee with Chest Pocket',
                            imagePath: "assets/ts5.jpg",
                            onclicking: () {}),
                        ImageButton(
                            title: 'Regular Fit Basic Tee',
                            imagePath: "assets/ts6.jpg",
                            onclicking: () {}),
                      ]),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageButton(
                            title: 'Full Sleeves Tee',
                            imagePath: "assets/ts1.jpg",
                            onclicking: () {}),
                        ImageButton(
                            title: 'Relax Fit Tee',
                            imagePath: "assets/ts2.jpg",
                            onclicking: () {}),
                      ]),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageButton(
                            title: 'Fit Tie-Dye Tee',
                            imagePath: "assets/ts3.jpg",
                            onclicking: () {}),
                        ImageButton(
                            title: 'Fit Basic Tee',
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
            showSelectedLabels: false,
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
            ]));
  }
}
