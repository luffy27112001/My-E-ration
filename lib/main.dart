import 'package:flutter/material.dart';
import 'package:loginapp/payment/existing-cards.dart';
import 'package:loginapp/LoggedIn/LoginPage.dart';
import 'package:provider/provider.dart';
import 'package:loginapp/authentication/authenticate.dart';
import 'package:loginapp/models/user.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return StreamProvider<User>.value(
      value: AuthService().user,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
        '/home': (context) => LoginPage(),
        '/existing-cards': (context) => ExistingCardsPage()},
        home: LoginPage(),
      ),
    );
  }
}