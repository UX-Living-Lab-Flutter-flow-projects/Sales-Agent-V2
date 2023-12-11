import '/backend/api_requests/api_calls.dart';
import '/components/comfirmationclear_widget.dart';
import '/components/shimmer_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'dart:async';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'chat_v2_model.dart';
export 'chat_v2_model.dart';

class ChatV2Widget extends StatefulWidget {
  const ChatV2Widget({
    Key? key,
    required this.product,
    required this.portfolio,
    required this.roompk,
    required this.sessionID,
    required this.messages,
  }) : super(key: key);

  final String? product;
  final String? portfolio;
  final int? roompk;
  final String? sessionID;
  final String? messages;

  @override
  _ChatV2WidgetState createState() => _ChatV2WidgetState();
}

class _ChatV2WidgetState extends State<ChatV2Widget>
    with TickerProviderStateMixin {
  late ChatV2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation2': AnimationInfo(
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
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatV2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 3000),
        callback: (timer) async {
          setState(() => _model.apiRequestCompleter = null);
          setState(() => _model.apiRequestCompleter = null);
        },
        startImmediately: true,
      );
    });

    _model.sendmsginputController ??= TextEditingController();
    _model.sendmsginputFocusNode ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: Color(0xFFFC0303),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                    setState(() {
                      FFAppState().imagePicked = false;
                      FFAppState().imagePickedFile = '';
                      FFAppState().SendingMessage = false;
                      FFAppState().shimmer = false;
                    });
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 45.0,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Text(
                          widget.product!,
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://chat.dowellstore.org/wp-content/uploads/2023/02/chat-avatar-01-1-300x300.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                Text(
                  'V2',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Builder(
                    builder: (context) => FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        FFIcons.kicons8ThreeDots241,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await showAlignedDialog(
                          context: context,
                          isGlobal: true,
                          avoidOverflow: false,
                          targetAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          followerAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          builder: (dialogContext) {
                            return Material(
                              color: Colors.transparent,
                              child: WebViewAware(
                                  child: GestureDetector(
                                onTap: () => _model.unfocusNode.canRequestFocus
                                    ? FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode)
                                    : FocusScope.of(context).unfocus(),
                                child: ComfirmationclearWidget(
                                  productName: widget.product!,
                                  portfolio: widget.portfolio!,
                                  sessionId: widget.sessionID!,
                                  roomId: widget.roompk!.toString(),
                                ),
                              )),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 60.0,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 14,
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(GetMessageLogedCall.call(
                                    roomId: widget.roompk,
                                  )))
                            .future,
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: ShimmerListWidget(),
                              ),
                            );
                          }
                          final listViewChatGetMessageLogedResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final msg = getJsonField(
                                listViewChatGetMessageLogedResponse.jsonBody,
                                r'''$.messages''',
                              ).toList();
                              return RefreshIndicator(
                                onRefresh: () async {
                                  setState(
                                      () => _model.apiRequestCompleter = null);
                                  await _model.waitForApiRequestCompleted();
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: msg.length,
                                  itemBuilder: (context, msgIndex) {
                                    final msgItem = msg[msgIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2.0, 30.0, 2.0, 2.0),
                                      child: Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          if (getJsonField(
                                                msgItem,
                                                r'''$.side''',
                                              ) &&
                                              (getJsonField(
                                                    msgItem,
                                                    r'''$.message_type''',
                                                  ) ==
                                                  FFAppState().text))
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 5.0, 15.0, 5.0),
                                                  child: Container(
                                                    constraints: BoxConstraints(
                                                      minWidth:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.2,
                                                      maxWidth:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.9,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                30.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                30.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                30.0),
                                                      ),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  5.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                              child:
                                                                  AutoSizeText(
                                                                getJsonField(
                                                                  msgItem,
                                                                  r'''$.message''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (getJsonField(
                                                            msgItem,
                                                            r'''$.read''',
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .check_outlined,
                                                                color: Colors
                                                                    .black,
                                                                size: 14.0,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation1']!),
                                                ),
                                              ],
                                            ),
                                          if (!getJsonField(
                                                msgItem,
                                                r'''$.side''',
                                              ) &&
                                              (getJsonField(
                                                    msgItem,
                                                    r'''$.message_type''',
                                                  ) ==
                                                  FFAppState().text))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.95, 0.00),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  6.0,
                                                                  5.0),
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          minWidth:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.2,
                                                          maxWidth:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.9,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (getJsonField(
                                                                msgItem,
                                                                r'''$.read''',
                                                              ))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .check_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 14.0,
                                                                  ),
                                                                ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          5.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    getJsonField(
                                                                      msgItem,
                                                                      r'''$.message''',
                                                                    ).toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    maxLines:
                                                                        15,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation2']!),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Expanded(
                                                      flex: 2,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            'https://chat.dowellstore.org/wp-content/uploads/2023/02/chat-avatar-01-1-300x300.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          if (!getJsonField(
                                                msgItem,
                                                r'''$.side''',
                                              ) &&
                                              (getJsonField(
                                                    msgItem,
                                                    r'''$.message_type''',
                                                  ) ==
                                                  FFAppState().image) &&
                                              !FFAppState().shimmer)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.85, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: Container(
                                                  width: 250.0,
                                                  height: 100.0,
                                                  child: custom_widgets
                                                      .ShowImgFromBytes(
                                                    width: 250.0,
                                                    height: 100.0,
                                                    base64String: getJsonField(
                                                      msgItem,
                                                      r'''$.message''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                  controller: _model.listViewChat,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 89.0,
                  constraints: BoxConstraints(
                    minHeight: 100.0,
                    maxWidth: 800.0,
                    maxHeight: 100.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 7.0, 12.0, 7.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (FFAppState().imagePicked)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: MediaQuery.sizeOf(context).height * 0.13,
                            child: custom_widgets.ShowImgFromBytes(
                              width: MediaQuery.sizeOf(context).width * 0.35,
                              height: MediaQuery.sizeOf(context).height * 0.13,
                              base64String: FFAppState().imagePickedFile,
                            ),
                          ),
                        if (!FFAppState().imagePicked)
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 5.0, 0.0, 5.0),
                                  child: TextFormField(
                                    controller: _model.sendmsginputController,
                                    focusNode: _model.sendmsginputFocusNode,
                                    onFieldSubmitted: (_) async {
                                      await _model.listViewChat?.animateTo(
                                        _model.listViewChat!.position
                                            .maxScrollExtent,
                                        duration: Duration(milliseconds: 100),
                                        curve: Curves.ease,
                                      );
                                    },
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Message...',
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                    maxLines: null,
                                    validator: _model
                                        .sendmsginputControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (!FFAppState().imagePicked)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.camera_alt,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 26.0,
                                ),
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  if (FFAppState().imagePicked) {
                                    setState(() {
                                      FFAppState().imagePicked = false;
                                      FFAppState().imagePickedFile = '';
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Image Removed',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    setState(() {
                                      FFAppState().imagePicked = false;
                                      FFAppState().imagePickedFile = '';
                                    });
                                  }

                                  setState(() {
                                    FFAppState().imagePicked = false;
                                    FFAppState().imagePickedFile = '';
                                  });
                                  _model.base64 =
                                      await actions.pickImageFromGallery();
                                  _shouldSetState = true;
                                  setState(() {
                                    FFAppState().imagePicked = true;
                                    FFAppState().imagePickedFile =
                                        _model.base64!;
                                  });
                                  if (FFAppState().imagePicked) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Image Picked',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    _model.apiResultmc =
                                        await SendMessageCall.call();
                                    _shouldSetState = true;
                                    if ((_model.apiResultmc?.succeeded ??
                                        true)) {
                                      setState(() {
                                        _model.sendmsginputController?.clear();
                                      });
                                      setState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                      FFAppState().update(() {});
                                      await _model.listViewChat?.animateTo(
                                        _model.listViewChat!.position
                                            .maxScrollExtent,
                                        duration: Duration(milliseconds: 100),
                                        curve: Curves.ease,
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Image Not Send',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                      );
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                              ),
                            if (FFAppState().imagePicked)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.clear,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 26.0,
                                ),
                                onPressed: () async {
                                  if (FFAppState().imagePicked) {
                                    setState(() {
                                      FFAppState().imagePicked = false;
                                      FFAppState().imagePickedFile = '';
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Image Removed',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                      ),
                                    );
                                    return;
                                  } else {
                                    setState(() {
                                      FFAppState().imagePicked = false;
                                      FFAppState().imagePickedFile = '';
                                    });
                                    return;
                                  }
                                },
                              ),
                            if (!FFAppState().imagePicked)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.attach_file,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 26.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFE63D43),
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 35.0,
                                  buttonSize: 55.0,
                                  icon: Icon(
                                    Icons.send,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 25.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    if (FFAppState().imagePicked) {
                                      setState(() {
                                        FFAppState().shimmer = true;
                                      });
                                      _model.apiSendImage =
                                          await SendMessageLogedCall.call(
                                        userId: getJsonField(
                                          FFAppState().response,
                                          r'''$.userinfo.userID''',
                                        ).toString(),
                                        orgId: getJsonField(
                                          FFAppState().response,
                                          r'''$.portfolio_info[0].org_id''',
                                        ).toString(),
                                        message: FFAppState().imagePickedFile,
                                        messageType: 'IMAGE',
                                        roomId: widget.roompk,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.apiSendImage?.succeeded ??
                                          true)) {
                                        setState(() {
                                          _model.sendmsginputController
                                              ?.clear();
                                        });
                                        setState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                        setState(() {
                                          FFAppState().shimmer = false;
                                        });
                                        await _model.listViewChat?.animateTo(
                                          _model.listViewChat!.position
                                              .maxScrollExtent,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.ease,
                                        );
                                        setState(() {
                                          FFAppState().imagePicked = false;
                                          FFAppState().imagePickedFile = '';
                                        });
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        setState(() {
                                          FFAppState().shimmer = false;
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Image Not Send',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      _model.apiSendTextMessage =
                                          await SendMessageLogedCall.call(
                                        userId: getJsonField(
                                          FFAppState().response,
                                          r'''$.userinfo.userID''',
                                        ).toString(),
                                        orgId: getJsonField(
                                          FFAppState().response,
                                          r'''$.portfolio_info[0].org_id''',
                                        ).toString(),
                                        message:
                                            _model.sendmsginputController.text,
                                        messageType: 'TEXT',
                                        roomId: widget.roompk,
                                      );
                                      _shouldSetState = true;
                                      if ((_model
                                              .apiSendTextMessage?.succeeded ??
                                          true)) {
                                        setState(() {
                                          _model.sendmsginputController
                                              ?.clear();
                                        });
                                        setState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                        setState(() {
                                          FFAppState().imagePicked = false;
                                          FFAppState().imagePickedFile = '';
                                        });
                                        await _model.listViewChat?.animateTo(
                                          _model.listViewChat!.position
                                              .maxScrollExtent,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.ease,
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Failed To Send Text',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
