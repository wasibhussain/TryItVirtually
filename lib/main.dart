import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tryvirtually/screens/home_page.dart';
import 'package:tryvirtually/screens/introduction_screen.dart';
//import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:tryvirtually/screens/details1.dart';
// import 'package:tryvirtually/screens/mainpage.dart';
// import 'package:tryvirtually/screens/search.dart';
// import 'package:tryvirtually/screens/signin.dart';
// import 'screens/details1.dart';

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
      home: introscreens(),
    );
  }
}
