import 'package:flutter/material.dart';
import 'package:nstAppTemplate/staffDirectory/staff.dart';

class StaffDirectoryBody extends StatefulWidget {
  StaffDirectoryBody(this.staff);
  final List<Staff> staff;
  @override
  _StaffDirectoryBodyState createState() =>
      _StaffDirectoryBodyState(this.staff);
}

class _StaffDirectoryBodyState extends State<StaffDirectoryBody> {
  _StaffDirectoryBodyState(this.allStaff);
  final List<Staff> allStaff;

  Widget titleWidget;
  bool currentlySearching;

  List staff;

  String searchStr;

  TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();

    titleWidget = Text("Staff Directory");
    currentlySearching = false;

    staff = allStaff;

    textEditingController = TextEditingController(text: "");
    textEditingController.addListener(() {
      setState(() {
        print("NEW SEARCH");
        staff = allStaff
          .where((element) =>
              element.fullName.toString().contains(textEditingController.text))
          .toList();
        print(staff);
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: this.currentlySearching
            ? TextField(
                controller: textEditingController,
                autofocus: true,
              )
            : titleWidget,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        heroTag: "searchButton",
        onPressed: () {
          setState(() {
            currentlySearching = !currentlySearching;
          });
        },
      ),
      body: ListView.builder(
        itemCount: this.staff.length,
        itemBuilder: (context, index) {
          Staff staff = this.staff[index];
          return ListTile(
            title: Text(staff.fullName),
            subtitle: Text(staff.department),
          );
        },
      ),
    );
  }
}
