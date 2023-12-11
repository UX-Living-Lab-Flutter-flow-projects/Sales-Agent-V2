import '/components/shimmer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'shimmer1_widget.dart' show Shimmer1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Shimmer1Model extends FlutterFlowModel<Shimmer1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    shimmerComponentModel = createModel(context, () => ShimmerComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    shimmerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
