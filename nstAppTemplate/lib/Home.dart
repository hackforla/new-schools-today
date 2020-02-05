import 'package:flutter/material.dart';
import './main.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.only(top: 100),
          onPressed: () {
            Navigator.pushNamed(context, LoginViewRoute, arguments: 'Data Passed in');
          },
        ),
      ),
    );
  }
}