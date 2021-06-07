
import 'package:flutter/material.dart';
import 'package:loginapp/models/luffy.dart';

class LuffyTile extends StatelessWidget {

  final Luffy luffy;
  LuffyTile({ this.luffy });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.blue[100],
          ),
          title: Text('Aadhaar : ${luffy.aadhaar}'),
          subtitle: Text('PAN: ${luffy.pan} \nPhone : ${luffy.phone}'),
        ),
      ),
    );
  }
}