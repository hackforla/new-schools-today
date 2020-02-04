import 'dart:convert';

import 'package:flutter/material.dart';

Future<dynamic> getJSONfromFile(BuildContext context) async {
    String jsonString =  await DefaultAssetBundle.of(context).loadString("assets/data/contacts.json");
    dynamic json = jsonDecode(jsonString);
    return json;
}

