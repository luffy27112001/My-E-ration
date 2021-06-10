import 'package:flutter/material.dart';
import 'package:loginapp/payment/payment.dart';

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  Map<int, bool> countToValue = <int, bool>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.qr_code),
              backgroundColor: Colors.blue[700],
              foregroundColor: Colors.white,
              onPressed: () => {
              },
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              child: Icon(
                  Icons.payment
              ),
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>  Payment()),);},
              heroTag: null,
            )
          ]
      ),
      body: ListView(
        children: [
          for (int count in List.generate(9, (index) => index + 1))
            ListTile(
              title: Text('List item $count'),
              isThreeLine: true,
              subtitle: Text('Secondary text\nTertiary text $count'),
              leading: Icon(Icons.label),
              selected: countToValue[count] ?? false,
              trailing: Checkbox(
                value: countToValue[count] ?? false,
                onChanged: (bool value) {
                  setState(() {
                    countToValue[count] = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}