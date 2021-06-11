import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RegistrationSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text(
          "Apply for Ration Card",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://nfsa.gov.in/portal/apply_ration_card",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}