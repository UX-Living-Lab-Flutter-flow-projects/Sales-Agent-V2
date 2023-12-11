import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newopen_chat_user_name_pop_up_model.dart';
export 'newopen_chat_user_name_pop_up_model.dart';

class NewopenChatUserNamePopUpWidget extends StatefulWidget {
  const NewopenChatUserNamePopUpWidget({
    Key? key,
    required this.productName,
  }) : super(key: key);

  final String? productName;

  @override
  _NewopenChatUserNamePopUpWidgetState createState() =>
      _NewopenChatUserNamePopUpWidgetState();
}

class _NewopenChatUserNamePopUpWidgetState
    extends State<NewopenChatUserNamePopUpWidget>
    with TickerProviderStateMixin {
  late NewopenChatUserNamePopUpModel _model;

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewopenChatUserNamePopUpModel());

    _model.userNameTextFieldController ??= TextEditingController();
    _model.userNameTextFieldFocusNode ??= FocusNode();

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

    return Align(
      alignment: AlignmentDirectional(0.00, -0.40),
      child: Material(
        color: Colors.transparent,
        elevation: 1.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).accent3,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Logo_500*500.png',
                    width: 150.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Text(
                        'Please Enter Your Name...',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: TextFormField(
                  controller: _model.userNameTextFieldController,
                  focusNode: _model.userNameTextFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).accent3,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF0A6233),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  validator: _model.userNameTextFieldControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 42.0, 10.0, 14.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 35.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          setState(() {
                            FFAppState().openChatUserName =
                                _model.userNameTextFieldController.text;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Creating Room...for ${_model.userNameTextFieldController.text}',
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
                          _model.creatOpenroomApiComonRoomMainWithName =
                              await NewCreateOpenRoomApiCall.call(
                            userId: _model.userNameTextFieldController.text,
                            productName: 'SALESAGENT',
                          );
                          _shouldSetState = true;
                          if ((_model.creatOpenroomApiComonRoomMainWithName
                                  ?.succeeded ??
                              true)) {
                            setState(() {
                              FFAppState().loading = false;
                              FFAppState()
                                  .showOpenChatUserNameFormAnCreateRoom = false;
                            });
                            await actions.saveSessionId(
                              context,
                              FFAppState().CommonRoom,
                              NewCreateOpenRoomApiCall.roomroomid(
                                (_model.creatOpenroomApiComonRoomMainWithName
                                        ?.jsonBody ??
                                    ''),
                              ).toString(),
                              NewCreateOpenRoomApiCall.portfolioname(
                                (_model.creatOpenroomApiComonRoomMainWithName
                                        ?.jsonBody ??
                                    ''),
                              ).toString(),
                              0,
                            );
                            _model.sessionExistResultCommonRoomMainWithName =
                                await actions.checkSessionSavedOrNot(
                              context,
                              FFAppState().CommonRoom,
                            );
                            _shouldSetState = true;
                            if (_model
                                    .sessionExistResultCommonRoomMainWithName ==
                                'success') {
                              context.pushNamed(
                                'ChatOpenRoom',
                                queryParameters: {
                                  'product': serializeParam(
                                    FFAppState().CommonRoom,
                                    ParamType.String,
                                  ),
                                  'portfolio': serializeParam(
                                    NewCreateOpenRoomApiCall.portfolioname(
                                      (_model.creatOpenroomApiComonRoomMainWithName
                                              ?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'roompk': serializeParam(
                                    NewCreateOpenRoomApiCall.roomroomid(
                                      (_model.creatOpenroomApiComonRoomMainWithName
                                              ?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'sessionID': serializeParam(
                                    NewCreateOpenRoomApiCall.roomroomid(
                                      (_model.creatOpenroomApiComonRoomMainWithName
                                              ?.jsonBody ??
                                          ''),
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'messages': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Unable to create Chat Link...',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              );
                            }

                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            setState(() {
                              FFAppState().loading = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Unable to create Chat Link',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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

                          if (_shouldSetState) setState(() {});
                        },
                        text: 'Submit',
                        options: FFButtonOptions(
                          width: 135.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF015633),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 35.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().update(() {
                            FFAppState().showOpenChatUserNameFormAnCreateRoom =
                                false;
                          });
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 135.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).error,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
