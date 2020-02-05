import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.only(top: 100),
          onPressed: () {
            
          },
        ),
      ),
    );
  }
}