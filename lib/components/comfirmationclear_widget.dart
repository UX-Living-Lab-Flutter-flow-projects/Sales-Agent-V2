import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comfirmationclear_model.dart';
export 'comfirmationclear_model.dart';

class ComfirmationclearWidget extends StatefulWidget {
  const ComfirmationclearWidget({
    Key? key,
    required this.productName,
    required this.roomId,
    required this.sessionId,
    required this.portfolio,
  }) : super(key: key);

  final String? productName;
  final String? roomId;
  final String? sessionId;
  final String? portfolio;

  @override
  _ComfirmationclearWidgetState createState() =>
      _ComfirmationclearWidgetState();
}

class _ComfirmationclearWidgetState extends State<ComfirmationclearWidget> {
  late ComfirmationclearModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComfirmationclearModel());

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
      width: 290.0,
      height: 230.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 14.0),
            child: Text(
              'Clear this Chat?',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
              child: Text(
                widget.sessionId!,
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 40.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Are you you want to clear ?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).accent3,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    setState(() {
                      FFAppState().shimmer = true;
                    });
                    _model.deleteConversationApiRequestI =
                        await DeleteConversationRoomCall.call(
                      sessionId: FFAppState().sessionId,
                      roomId: widget.roomId,
                    );
                    _shouldSetState = true;
                    if ((_model.deleteConversationApiRequestI?.succeeded ??
                        true)) {
                      if (DeleteConversationRoomCall.error(
                            (_model.deleteConversationApiRequestI?.jsonBody ??
                                ''),
                          ).toString() ==
                          'null') {
                        setState(() {
                          FFAppState().shimmer = false;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              DeleteConversationRoomCall.error(
                                (_model.deleteConversationApiRequestI
                                        ?.jsonBody ??
                                    ''),
                              ).toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 5000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        );
                        _model.deletingConversationLocalDataifDeleteFailedRemoveSavedSession =
                            await actions.deleteConversation(
                          context,
                          widget.productName!,
                        );
                        _shouldSetState = true;
                        context.safePop();
                        context.safePop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${widget.productName} \'s conversation deleted',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        );
                        setState(() {
                          FFAppState().shimmer = false;
                        });
                        if (_shouldSetState) setState(() {});
                        return;
                      }

                      if (DeleteConversationRoomCall.deletestatus(
                            (_model.deleteConversationApiRequestI?.jsonBody ??
                                ''),
                          ).toString() ==
                          'Room deleted successfully') {
                        _model.deletingConversationLocalData =
                            await actions.deleteConversation(
                          context,
                          widget.productName!,
                        );
                        _shouldSetState = true;
                        if (_model.deletingConversationLocalData == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${widget.productName} \'s conversation deleted',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          );
                          setState(() {
                            FFAppState().shimmer = false;
                          });
                          context.safePop();
                          context.safePop();
                          if (_shouldSetState) setState(() {});
                          return;
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Failed To Delete Local Conversation Data',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          );
                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Failed To Delete Cloud Conversation ',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 3000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              DeleteConversationRoomCall.deletestatus(
                                (_model.deleteConversationApiRequestI
                                        ?.jsonBody ??
                                    ''),
                              ).toString(),
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 5000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Conversation info Error',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      );
                      context.safePop();
                      context.safePop();
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                  },
                  text: 'Clear Chat',
                  icon: Icon(
                    Icons.delete,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).accent3,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFFC0303),
                          fontSize: 12.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
