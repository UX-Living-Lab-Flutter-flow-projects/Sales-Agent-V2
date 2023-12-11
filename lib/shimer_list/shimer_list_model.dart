import '/components/shimmer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'shimer_list_widget.dart' show ShimerListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShimerListModel extends FlutterFlowModel<ShimerListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel1;
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel2;
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel3;
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel4;
  // Model for ShimmerComponent component.
  late ShimmerComponentModel shimmerComponentModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    shimmerComponentModel1 =
        createModel(context, () => ShimmerComponentModel());
    shimmerComponentModel2 =
        createModel(context, () => ShimmerComponentModel());
    shimmerComponentModel3 =
        createModel(context, () => ShimmerComponentModel());
    shimmerComponentModel4 =
        createModel(context, () => ShimmerComponentModel());
    shimmerComponentModel5 =
        createModel(context, () => ShimmerComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    shimmerComponentModel1.dispose();
    shimmerComponentModel2.dispose();
    shimmerComponentModel3.dispose();
    shimmerComponentModel4.dispose();
    shimmerComponentModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
