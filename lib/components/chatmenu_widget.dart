import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chatmenu_model.dart';
export 'chatmenu_model.dart';

class ChatmenuWidget extends StatefulWidget {
  const ChatmenuWidget({
    Key? key,
    required this.productName,
    required this.roomId,
    required this.sessionId,
    required this.portfolio,
  }) : super(key: key);

  final String? productName;
  final int? roomId;
  final String? sessionId;
  final String? portfolio;

  @override
  _ChatmenuWidgetState createState() => _ChatmenuWidgetState();
}

class _ChatmenuWidgetState extends State<ChatmenuWidget> {
  late ChatmenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatmenuModel());

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

    return Container(
      width: 180.0,
      height: 105.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Options',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.cancel,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 2.0, 0.0, 0.0),
            child: ListTile(
              leading: Icon(
                Icons.delete_sharp,
                color: Color(0xFFA80924),
              ),
              title: Text(
                'Clear Chat',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 13.0,
                    ),
              ),
              dense: false,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
            ),
          ),
        ],
      ),
    );
  }
}
