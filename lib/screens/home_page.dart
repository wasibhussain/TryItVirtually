import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:tryvirtually/screens/WebView.dart';
import 'package:tryvirtually/screens/men_category/hoodies.dart';
import 'package:tryvirtually/screens/men_category/men_category_details.dart';
import 'package:tryvirtually/screens/men_category/t-shirt.dart';
import 'package:tryvirtually/screens/search.dart';
import 'package:tryvirtually/screens/shopping_bag.dart';
import 'package:tryvirtually/screens/signin.dart';
import 'package:tryvirtually/screens/wish_List.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> downloadURLExample() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref('images/wasib.jpg')
        .getDownloadURL();
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = ["T-Shirts", "Hoodies", "Jackets", "Sweaters"];

  List menimages = [
    "assets/men1.jpg",
    "assets/men2.jpg",
    "assets/men3.jpg",
    "assets/men4.jpg",
  ];
  List womanimages = [
    "assets/woman1.jpg",
    "assets/woman2.jpg",
    "assets/woman3.jpg",
    "assets/woman4.jpg",
  ];
  List juniorsimages = [
    "assets/kid2.jpg",
    "assets/kids.jpg",
    "assets/kid1.jpg",
    "assets/kid3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Text(
              "Try Virtually",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListSearch()));
                },
                //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShoppingBag()));
                  },
                  //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "Men",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: menimages.length,
                    // physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TShirt()));
                            }
                            if (index == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Hoodies()));
                            }
                          },
                          child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff808080),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("${menimages[index]}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "${categories[index]}",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Women",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: womanimages.length,

                      // physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Color(0xff808080),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("${womanimages[index]}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "${categories[index]}",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 12),
                    child: Text(
                      "Juniors",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    height: 190,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: juniorsimages.length,
                        // physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color(0xff808080),
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("${juniorsimages[index]}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "${categories[index]}",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ]),
                SizedBox(height: 10),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    alignment: Alignment.center,
                    // width: 340,
                    width: MediaQuery.of(context).size.width - 20,
                    height: 45,
                    color: Colors.black,
                    child: Text(
                      "NEWSLETTER",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    child: Text(
                      "Need Help?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Buying Guide",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "About Try Virtually",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Return & Exchange",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "V0.0.1",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                ]),
              ])
            ]))),
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
                icon: IconButton(
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WishList()));
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

  pushPage(context, dynamic route) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  }
}
