import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EAdhaarSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text(
          "Download E-Adhaar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://eaadhaar.uidai.gov.in/#/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}