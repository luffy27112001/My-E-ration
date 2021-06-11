import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StatusSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text(
          "State-wise Links ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://www.bankbazaar.com/ration-card.html",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}