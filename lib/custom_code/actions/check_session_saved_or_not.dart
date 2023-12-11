// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> checkSessionSavedOrNot(
    BuildContext context, String product) async {
  var jsData = await FFAppState().sessions;

  String res2 = "failed";
  // String rea1 = "prod name";
  for (int i = 0; i < jsData.length; i++) {
    String checker = jsData[i]["product"].toString();
    if (checker == product) {
      // rea1 = checker;
      String session = jsData[i]["session_id"].toString();
      String portfolio = jsData[i]["portfolio"].toString();
      int roomPk = jsData[i]["room_pk"];

      String messages = "";
      // int room_pk = jsData[i]["room_pk"];
      FFAppState().ActiveSession.clear();
      FFAppState().ActiveSession
        ..add({
          "product": product,
          "session_id": session,
          "portfolio": portfolio,
          "messages": product,
          "room_pk": roomPk
        });
      res2 = "success";
      break;
//etState({});
      // return checker + " :successfully  ";)
    }
  }
  return res2;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
