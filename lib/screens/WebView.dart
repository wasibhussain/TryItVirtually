import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebView extends StatefulWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://stoic-morse-3558ed.netlify.app/",
      // hidden: true,
      // scrollBar: false,
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
    );
  }
}
