import 'package:flutter/material.dart';
import 'package:loginapp/LoggedIn/LoggedIn.dart';
class Image1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            title: Text("ONORC States"),
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoggedIn()),);}),
          ),

          body: Center(
              child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/lake.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment :CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.star),
                          onPressed: () {

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_cart ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ]
              )
          ),
        )
    );

  }
}