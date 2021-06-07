import 'package:flutter/material.dart';
import 'LoggedIn.dart';
class Image1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: Scaffold(
          appBar: AppBar(
            title: Text("Solid Shop"),
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  LoggedIn()),);}),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
              IconButton(icon: Icon(Icons.message), onPressed: () {}),
            ],
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