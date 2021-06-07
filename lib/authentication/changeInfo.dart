import 'package:loginapp/authentication/database.dart';
import 'package:loginapp/models/user.dart';
import 'package:loginapp/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/shared/loading.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();
  // form values
  String _currentAadhaar;
  String _currentPan;
  String _currentPhone;

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
        if(snapshot.hasData){
            UserData userData = snapshot.data;

            return Container(
              child: Form(
                key: _formKey,
                
                child: Column(
                  children: <Widget>[
                    Text(
                      'Update your Personal Information',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      initialValue : userData.aadhaar,
                      decoration: textInputDecoration.copyWith(hintText: 'Enter your Aadhaar Number'),
                      validator: (val) => val.isEmpty ? 'Please enter Aadhaar Number' : null,
                      onChanged: (val) => setState(() => _currentAadhaar = val),
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      initialValue : _currentPan ?? userData.pan,
                      decoration: textInputDecoration.copyWith(hintText: 'Enter your Pan Number'),
                      validator: (val) => val.isEmpty ? 'Please enter Pan Number' : null,
                      onChanged: (val) => setState(() => _currentPan = val),
                    ),

                    SizedBox(height: 20.0),
                    TextFormField(
                      initialValue : _currentPhone ?? userData.phone,
                      decoration: textInputDecoration.copyWith(hintText: 'Enter your Phone Number'),
                      validator: (val) => val.isEmpty ? 'Please enter Phone Number' : null,
                      onChanged: (val) => setState(() => _currentPhone = val),
                    ),
                    RaisedButton(
                        color: Colors.blue[400],
                        child: Text(
                          'Update',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if(_formKey.currentState.validate()){
                            await DatabaseService(uid: user.uid).updateUserData(
                                _currentAadhaar?? snapshot.data.aadhaar,
                                _currentPan?? snapshot.data.pan,
                                _currentPhone?? snapshot.data.phone
                            );
                            Navigator.pop(context);
                          }
                        }
                    ),
                  ],
                ),
              ),
            );
        } else {
          return Loading();
        }
        }
    );
  }
}