import 'package:flutter/material.dart';
import 'package:loginapp/Forgot.dart';
import 'LoggedIn.dart';
import 'Registration.dart';
import 'package:loginapp/authentication/authenticate.dart';
import 'package:loginapp/shared/constants.dart';
import 'package:loginapp/shared/loading.dart';
class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Column(
        children : <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Enter you email'),
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Enter you password'),
                    obscureText: true,
                    validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                    onChanged: (val) {
                                       setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 12.0),
                  ElevatedButton(
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      ),
                    onPressed: ()  async {
                        if(_formKey.currentState.validate()){
                          setState(() => loading = true);
                          dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                            if(result == null) {
                                setState(() {
                                  loading = false;
                              error = 'Wrong credentials';
                              });
                              }
                              else{
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  LoggedIn()),);}
                        }
                              }
                  ),
                  SizedBox(height: 12.0),
                  ElevatedButton(
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Registration()),
                      );},
                  ),
                  SizedBox(height: 12.0),
                  ElevatedButton(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Forgot()),
                      );},
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          )
        ]);
  }
}

