import '/components/chatshrim_widget.dart';
import '/components/imagecomp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shrimmerforchat_widget.dart' show ShrimmerforchatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShrimmerforchatModel extends FlutterFlowModel<ShrimmerforchatWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for chatshrim component.
  late ChatshrimModel chatshrimModel1;
  // Model for imagecomp component.
  late ImagecompModel imagecompModel1;
  // Model for chatshrim component.
  late ChatshrimModel chatshrimModel2;
  // Model for imagecomp component.
  late ImagecompModel imagecompModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chatshrimModel1 = createModel(context, () => ChatshrimModel());
    imagecompModel1 = createModel(context, () => ImagecompModel());
    chatshrimModel2 = createModel(context, () => ChatshrimModel());
    imagecompModel2 = createModel(context, () => ImagecompModel());
  }

  void dispose() {
    chatshrimModel1.dispose();
    imagecompModel1.dispose();
    chatshrimModel2.dispose();
    imagecompModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
