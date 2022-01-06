import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tryvirtually/screens/home_page.dart';

class introscreens extends StatefulWidget {
  const introscreens({Key? key}) : super(key: key);

  @override
  _introscreensState createState() => _introscreensState();
}

Widget _buildFullscrenImage() {
  return Image.asset(
    'assets/pic1.png',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}

Widget _buildImage(String assetName, [double width = 350]) {
  return Image.asset('assets/$assetName', width: width);
}

class _introscreensState extends State<introscreens> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Try It, Virtually",
          body:
              "We bring the real shopping experience to the virtual world with the most realistic virtual try-on room....",
          image: Padding(
            padding: const EdgeInsets.only(top: 130, left: 30),
            child: Image.asset("assets/buy.png", width: 300, height: 300.0),
          ),
        ),
        PageViewModel(
          title: "Buy your favorite Outfits",
          body:
              "We make shopping more convenient, engaging, and fun for both customers and business...",
          image: Padding(
            padding: const EdgeInsets.only(top: 130, left: 30),
            child: Image.asset("assets/done.png", width: 300, height: 300.0),
          ),
        ),
      ],
      onDone: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
        // When done button is press
      },
      onSkip: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
      },
      showSkipButton: true,
      skip: const Text("Skip",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      next: const Text("Next",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      done: const Text("Done",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.black,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
