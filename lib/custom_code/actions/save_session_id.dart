// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> saveSessionId(BuildContext context, String product,
    String sessionID, String portfolio, int room_pk) async {
  FFAppState().sessions = FFAppState().sessions
    ..add({
      "session_id": sessionID,
      "product": product,
      "portfolio": portfolio,
      "messages": product,
      "room_pk": room_pk
    });

  // FFAppState().sessionIDs
  //   ..add({
  //     "product": product,
  //     "session_id": sessionID,
  //     "portfolio": portfolio,
  //     "messages": product,
  //     "room_pk": room_pk
  //   });
}

// {"session_id": "36ht78fmcvbn36ht78fmcvbn", "product": "Sales-Agent", "portfolio": 783, "messages": [], "room_pk": 995}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
