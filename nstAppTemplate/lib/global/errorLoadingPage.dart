import 'package:flutter/material.dart';

class ErrorLoadingDataPage extends StatelessWidget {
  ErrorLoadingDataPage(this.loadingStr);
  final String loadingStr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error loading " + this.loadingStr),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 50,
            ),
            Divider(),
            Text(
              "We were unable to load " + this.loadingStr,
              textScaleFactor: 1.35,
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
