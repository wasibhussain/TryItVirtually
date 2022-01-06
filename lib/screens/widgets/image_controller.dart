import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String title;
  final String imagePath;
  VoidCallback onclicking;
  ImageButton(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.onclicking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onclicking,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: 180,
            width: (MediaQuery.of(context).size.width / 2) - 40,
            // padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          )
        ]));
  }
}
