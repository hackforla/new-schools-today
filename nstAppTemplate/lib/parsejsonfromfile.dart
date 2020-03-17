import 'dart:convert';

import 'package:flutter/material.dart';

Future<dynamic> getJSONfromFile(BuildContext context, String fileName) async {
    String jsonString =  await DefaultAssetBundle.of(context).loadString("assets/data/"+fileName +".json");
    dynamic json = jsonDecode(jsonString);
    return json;
}

