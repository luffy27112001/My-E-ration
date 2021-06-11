import 'package:flutter/material.dart';
import 'package:loginapp/LoggedIn/LoggedIn.dart';
import 'package:loginapp/authentication/luffy_list.dart';
import 'package:loginapp/authentication/database.dart';
import 'package:loginapp/models/luffy.dart';
import 'package:loginapp/models/user.dart';
import 'package:provider/provider.dart';
import 'package:loginapp/authentication/changeInfo.dart';
class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: SettingsForm(),
        );
      });
    }
    return StreamProvider<List<Luffy>>.value(
      value: DatabaseService().luffys,
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text('Personal Info'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0,
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.update),
              label: Text(''),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: ()  {
                _showSettingsPanel();
                },
            ),
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: LuffyList(),
    ),
    );
  }
}