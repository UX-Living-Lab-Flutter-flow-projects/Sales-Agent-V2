import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_client_comp_widget.dart' show UpdateClientCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateClientCompModel extends FlutterFlowModel<UpdateClientCompWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for contactType widget.
  FormFieldController<String>? contactTypeValueController;
  // State field(s) for rating widget.
  FormFieldController<String>? ratingValueController;
  // Stores action output result for [Backend Call - API (updateClientt)] action in Button widget.
  ApiCallResponse? result;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get contactTypeValue => contactTypeValueController?.value;
  String? get ratingValue => ratingValueController?.value;
}
