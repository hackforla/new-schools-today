import 'package:flutter/material.dart';
import './main.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: Center(
              child: Text('Pages', style: TextStyle(fontSize: 80)),
            ),
          ),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: routes.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: RaisedButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Color.fromARGB(255, 240, 240, 240),
                  padding: EdgeInsets.all(10),
                  child: Text(routes[index]['name'], style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.pushNamed(context, routes[index]['route'], arguments: 'Data Passed in');
                  },
                )
              );
            }
          ),
        ],
      )
    );
  }
}