import '/components/shimmer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shimer_list_model.dart';
export 'shimer_list_model.dart';

class ShimerListWidget extends StatefulWidget {
  const ShimerListWidget({Key? key}) : super(key: key);

  @override
  _ShimerListWidgetState createState() => _ShimerListWidgetState();
}

class _ShimerListWidgetState extends State<ShimerListWidget> {
  late ShimerListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimerListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.7,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.shimmerComponentModel1,
                      updateCallback: () => setState(() {}),
                      child: ShimmerComponentWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shimmerComponentModel2,
                      updateCallback: () => setState(() {}),
                      child: ShimmerComponentWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shimmerComponentModel3,
                      updateCallback: () => setState(() {}),
                      child: ShimmerComponentWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shimmerComponentModel4,
                      updateCallback: () => setState(() {}),
                      child: ShimmerComponentWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shimmerComponentModel5,
                      updateCallback: () => setState(() {}),
                      child: ShimmerComponentWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
