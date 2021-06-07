import 'package:flutter/material.dart';
import 'package:loginapp/authentication/luffy_tile.dart';
import 'package:loginapp/models/luffy.dart';
import 'package:provider/provider.dart';

class LuffyList extends StatefulWidget {
  @override
  _LuffyListState createState() => _LuffyListState();
}

class _LuffyListState extends State<LuffyList> {
  @override
  Widget build(BuildContext context) {
    final luffys = Provider.of<List<Luffy>>(context) ?? [];

    return luffys == null
        ? Container(
            width: 100.0,
            height: 100.0,
          )
        : ListView.builder(
            itemCount: luffys.length,
            itemBuilder: (context, index) {
              return LuffyTile(luffy: luffys[index]);
            },
          );
  }
}
