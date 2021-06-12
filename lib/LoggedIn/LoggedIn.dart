import 'package:flutter/material.dart';
import 'package:loginapp/LoggedIn/PersonalInfo.dart';
import 'package:loginapp/websites/register.dart';
import 'package:loginapp/websites/status.dart';
import 'package:loginapp/QR/homePage.dart';
import 'Registration.dart';
import 'ListDemo.dart';
import 'package:loginapp/Image1.dart';
import 'package:loginapp/authentication/authenticate.dart';
import 'LoginPage.dart';

class LoggedIn extends StatelessWidget{
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    BuildContext rootContext = context;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Jan - Ration"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle), onPressed: () => {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  PersonalInfo()),)}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () => {})
        ],
      ),
      backgroundColor: Colors.white70,
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment :CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.login),
                  iconSize: 48,
                  tooltip: 'Registration',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  RegistrationSite()),
                    );
                  },
                ),

                IconButton(
                  icon: Icon(Icons.supervised_user_circle_rounded),
                  iconSize: 48,
                  tooltip: 'Status',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  StatusSite()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.location_pin),
                  iconSize: 48,
                  tooltip: 'Cart',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomePage()),);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment :CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.people_alt),
                  iconSize: 48,
                  onPressed: () {         },
                ),

                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 48,
                  onPressed: () {

                  },
                ),

                IconButton(
                  icon: Icon(Icons.location_searching ),
                  iconSize: 48,
                  tooltip: 'ONORC States',
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Image1()),);
                    },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment :CrossAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 48,
                  onPressed: () {

                  },
                ),

                IconButton(
                  icon: Icon(Icons.star),
                  iconSize: 48,
                  onPressed: () {

                  },
                ),

                IconButton(
                  icon: Icon(Icons.shopping_cart ),
                  iconSize: 48,
                  onPressed: () {

                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment :CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.snippet_folder),
                  iconSize: 48,
                  onPressed: () {

                  },
                ),
                IconButton(
                  icon: Icon(Icons.feedback ),
                  iconSize: 48,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Image1()),);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('LogOut'),
              onTap: () async {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  LoginPage()),);
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
