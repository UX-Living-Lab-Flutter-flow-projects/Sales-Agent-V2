import '/backend/api_requests/api_calls.dart';
import '/components/comfirmationclear_widget.dart';
import '/components/shimmer_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'chat_v2_widget.dart' show ChatV2Widget;
import 'dart:async';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChatV2Model extends FlutterFlowModel<ChatV2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for ListViewChat widget.
  ScrollController? listViewChat;
  // State field(s) for sendmsginput widget.
  FocusNode? sendmsginputFocusNode;
  TextEditingController? sendmsginputController;
  String? Function(BuildContext, String?)? sendmsginputControllerValidator;
  // Stores action output result for [Custom Action - pickImageFromGallery] action in IconButton widget.
  String? base64;
  // Stores action output result for [Backend Call - API (sendMessage)] action in IconButton widget.
  ApiCallResponse? apiResultmc;
  // Stores action output result for [Backend Call - API (sendMessageLoged)] action in IconButton widget.
  ApiCallResponse? apiSendImage;
  // Stores action output result for [Backend Call - API (sendMessageLoged)] action in IconButton widget.
  ApiCallResponse? apiSendTextMessage;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listViewChat = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    listViewChat?.dispose();
    sendmsginputFocusNode?.dispose();
    sendmsginputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
