import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final String argument;
  const LoginView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'fromLogin');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login $argument'),
        ),
        body: Center(
          child: RaisedButton(
            padding: EdgeInsets.only(top: 100),
            onPressed: () {
              Navigator.pop(context, 'fromLogin');
            },
          ),
        ),
      ),
    );
  }
}