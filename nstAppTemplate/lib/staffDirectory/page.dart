import 'package:flutter/material.dart';
import 'package:nstAppTemplate/global/errorLoadingPage.dart';
import 'package:nstAppTemplate/global/loadingPage.dart';
import 'package:nstAppTemplate/parsejsonfromfile.dart';
import 'package:nstAppTemplate/staffDirectory/body.dart';
import 'package:nstAppTemplate/staffDirectory/staff.dart';

class StaffDirectoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getJSONfromFile(context, 'staff'),
      builder: (c, s) {
        if (s.connectionState != ConnectionState.done) {
          return LoadingDataPage('Staff');
        } else if (s.hasError) {
          return ErrorLoadingDataPage("staff");
        } else {
          
          return StaffDirectoryBody(staffListFromJSON(s.data));
        }
      },
    );
  }
}
