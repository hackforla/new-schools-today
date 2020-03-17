import 'package:flutter/material.dart';

class LoadingDataPage extends StatelessWidget {
  LoadingDataPage(this.loadingStr);
  final String loadingStr;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading " + this.loadingStr),
      ),
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           CircularProgressIndicator(),
           Divider(),
           Text("Loading " + this.loadingStr, textScaleFactor: 1.35, textAlign: TextAlign.center),
        ]
      ),
    );
  }
}