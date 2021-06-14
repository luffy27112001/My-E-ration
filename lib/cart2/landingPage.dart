import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/QR/scan.dart';
import 'package:loginapp/cart2/Categories.dart';
import 'package:loginapp/data/data.dart';

import 'cartScreen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                          color: Colors.black,
                        ), onPressed: () {  },
                      ),
                    ),
                  ),
                  Text(
                    'Jan-Ration',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        letterSpacing: 3),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CartScreen(),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                '(${cart.length})',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  width: size.width,
                  height: 70,
                  child: search(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      letterSpacing: 3),
                ),
              ),
              Categories(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
                color: Colors.black,
              ),
              label: "Scan"),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              label: "Cart"),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ScanPage(),
              ),
            );
          }

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CartScreen(),
              ),
            );
          }
        },
      ),
    );
  }

  TextField search() {
    return TextField(
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        ),
        prefixIcon: Icon(Icons.search),
        hintText: "Search.",
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {},
        ),
      ),
    );
  }
}
