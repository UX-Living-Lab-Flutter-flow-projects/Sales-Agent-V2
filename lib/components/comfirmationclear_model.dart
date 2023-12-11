import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'comfirmationclear_widget.dart' show ComfirmationclearWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComfirmationclearModel extends FlutterFlowModel<ComfirmationclearWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (deleteConversationRoom)] action in Button widget.
  ApiCallResponse? deleteConversationApiRequestI;
  // Stores action output result for [Custom Action - deleteConversation] action in Button widget.
  String? deletingConversationLocalDataifDeleteFailedRemoveSavedSession;
  // Stores action output result for [Custom Action - deleteConversation] action in Button widget.
  String? deletingConversationLocalData;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
