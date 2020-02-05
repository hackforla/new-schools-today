import 'package:flutter/material.dart';
import './main.dart';

class UndefinedView extends StatelessWidget {
  final String name;
  const UndefinedView({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Undefined Page -> $name'),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.only(top: 100),
          onPressed: () {
            Navigator.pushNamed(context, HomeViewRoute);
          },
        ),
      ),
    );
  }
}