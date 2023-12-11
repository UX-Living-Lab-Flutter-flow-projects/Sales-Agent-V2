import '/components/chatshrim_widget.dart';
import '/components/imagecomp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shrimmerforchat_model.dart';
export 'shrimmerforchat_model.dart';

class ShrimmerforchatWidget extends StatefulWidget {
  const ShrimmerforchatWidget({Key? key}) : super(key: key);

  @override
  _ShrimmerforchatWidgetState createState() => _ShrimmerforchatWidgetState();
}

class _ShrimmerforchatWidgetState extends State<ShrimmerforchatWidget> {
  late ShrimmerforchatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShrimmerforchatModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.chatshrimModel1,
              updateCallback: () => setState(() {}),
              child: ChatshrimWidget(),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.imagecompModel1,
              updateCallback: () => setState(() {}),
              child: ImagecompWidget(),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.chatshrimModel2,
              updateCallback: () => setState(() {}),
              child: ChatshrimWidget(),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.90, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.imagecompModel2,
              updateCallback: () => setState(() {}),
              child: ImagecompWidget(),
            ),
          ),
        ),
      ],
    );
  }
}
