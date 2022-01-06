import 'package:flutter/material.dart';

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "T-Shirts",
    "Shirts",
    "Jackets",
    "Hoodies",
    "Coats",
    "Sweaters",
    "Jeans",
    "Trousers",
    "Shoes",
    "Polos",
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
          actions: [
            Padding(padding: EdgeInsets.only(right: 10)),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _textController,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      prefixIcon: new Icon(Icons.search, color: Colors.black),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)),
                  onChanged: onItemChanged,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(10.0),
                  children: newDataList.map((data) {
                    return ListTile(
                      leading: Icon(Icons.history),
                      title: Text(data),
                      onTap: () => print(data),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ));
  }
}
