import '/backend/api_requests/api_calls.dart';
import '/components/newopen_chat_user_name_pop_up_widget.dart';
import '/components/show_chose_book_widget.dart';
import '/components/show_chose_referul_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultaw5 = await CreateProtfolioCall.call(
        username: getJsonField(
          FFAppState().response,
          r'''$.userinfo.username''',
        ).toString().toString(),
        sessionId: FFAppState().sessionId,
        userId: getJsonField(
          FFAppState().response,
          r'''$.userinfo.userID''',
        ).toString().toString(),
        orgId: getJsonField(
          FFAppState().response,
          r'''$.portfolio_info[0].org_id''',
        ).toString().toString(),
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFC0303),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: Color(0xFFF18A8A),
              size: 30.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 25.0),
              child: Text(
                'UX Living Lab Sales Agent',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFF18A8A),
                      fontSize: 16.0,
                    ),
              ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: FaIcon(
                FontAwesomeIcons.solidWindowClose,
                color: Color(0xFFF18A8A),
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('Home');
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.02,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://www.youtube.com/watch?v=eWq8w9gNjws&t=3s');
                                  },
                                  text: 'Business Plan',
                                  options: FFButtonOptions(
                                    width: 110.0,
                                    height: 70.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFC0303),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 5.0,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(
                                      'https://calendly.com/d/zzh-gzj-7dv/first-meeting-with-sales-agent-by-true-moments-ux-lab');
                                },
                                text: 'Set Meeting',
                                options: FFButtonOptions(
                                  width: 110.0,
                                  height: 70.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFC0303),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(
                                      'https://www.salesagent.dowellstore.org/');
                                },
                                text: 'Website',
                                options: FFButtonOptions(
                                  width: 110.0,
                                  height: 70.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFC0303),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.02,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: Color(0xFFFBFBFB),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      height: MediaQuery.sizeOf(context).height * 0.65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor: Color(0xFFFF000E),
                                unselectedLabelColor: Color(0xFFAEADAD),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                unselectedLabelStyle: TextStyle(),
                                indicatorColor: Color(0xFFFF000E),
                                tabs: [
                                  Tab(
                                    text: 'Product Chat Rooms',
                                  ),
                                  Tab(
                                    text: 'UX Living Lab',
                                  ),
                                ],
                                controller: _model.tabBarController,
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            final activeProducts =
                                                FFAppState().Product.toList();
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  activeProducts.length,
                                                  (activeProductsIndex) {
                                                final activeProductsItem =
                                                    activeProducts[
                                                        activeProductsIndex];
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Colors.white,
                                                    elevation: 8.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.00, 0.00),
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/Playstore_logo_(6).png',
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          fadeInDuration:
                                                                              Duration(milliseconds: 500),
                                                                          fadeOutDuration:
                                                                              Duration(milliseconds: 500),
                                                                          imageUrl:
                                                                              getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.image''',
                                                                          ),
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              90.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      if (getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.status''',
                                                                          ) ==
                                                                          FFAppState()
                                                                              .ComingSoon)
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.00,
                                                                              0.95),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                5.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              getJsonField(
                                                                                activeProductsItem,
                                                                                r'''$.status''',
                                                                              ).toString(),
                                                                              textAlign: TextAlign.end,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: Color(0xFFFC0303),
                                                                                    fontSize: 10.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FontStyle.italic,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (valueOrDefault<
                                                            bool>(
                                                          getJsonField(
                                                                activeProductsItem,
                                                                r'''$.product''',
                                                              ) ==
                                                              FFAppState()
                                                                  .CommonRoom,
                                                          true,
                                                        ))
                                                          Container(
                                                            width: 60.0,
                                                            height: 0.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                          ),
                                                        if (getJsonField(
                                                              activeProductsItem,
                                                              r'''$.product''',
                                                            ) !=
                                                            FFAppState()
                                                                .CommonRoom)
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 60.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .list,
                                                              color: Color(
                                                                  0xFFC8C6C5),
                                                              size: 30.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              if (getJsonField(
                                                                    activeProductsItem,
                                                                    r'''$.link''',
                                                                  ) ==
                                                                  FFAppState()
                                                                      .featuresdigitalq) {
                                                                context.pushNamed(
                                                                    'features_digitalq');
                                                              } else {
                                                                if (getJsonField(
                                                                      activeProductsItem,
                                                                      r'''$.link''',
                                                                    ) ==
                                                                    FFAppState()
                                                                        .featuesworkflowai) {
                                                                  context.pushNamed(
                                                                      'featues_workflowai');
                                                                } else {
                                                                  if (getJsonField(
                                                                        activeProductsItem,
                                                                        r'''$.link''',
                                                                      ) ==
                                                                      FFAppState()
                                                                          .featueswifiqrcode) {
                                                                    context.pushNamed(
                                                                        'featues_wifiqrcode');
                                                                  } else {
                                                                    if (getJsonField(
                                                                          activeProductsItem,
                                                                          r'''$.link''',
                                                                        ) ==
                                                                        'Scales') {
                                                                      context.pushNamed(
                                                                          'Scaleschatpage');
                                                                    } else {
                                                                      if (getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.link''',
                                                                          ) ==
                                                                          'Samanta') {
                                                                        context.pushNamed(
                                                                            'samantachatpage');
                                                                      } else {
                                                                        if (getJsonField(
                                                                              activeProductsItem,
                                                                              r'''$.link''',
                                                                            ) ==
                                                                            'UX Live') {
                                                                          context
                                                                              .pushNamed('uxlivechatpage');
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            },
                                                          ),
                                                        Container(
                                                          width: 175.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var _shouldSetState =
                                                                  false;
                                                              setState(() {
                                                                FFAppState()
                                                                    .ActiveSession = [];
                                                              });
                                                              if (getJsonField(
                                                                    activeProductsItem,
                                                                    r'''$.product''',
                                                                  ) ==
                                                                  FFAppState()
                                                                      .CommonRoom) {
                                                                _model.sessionExistResultForComonRoomMain =
                                                                    await actions
                                                                        .checkSessionSavedOrNot(
                                                                  context,
                                                                  FFAppState()
                                                                      .CommonRoom,
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if (_model
                                                                        .sessionExistResultForComonRoomMain ==
                                                                    'success') {
                                                                  context
                                                                      .pushNamed(
                                                                    'ChatOpenRoom',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        FFAppState()
                                                                            .OpenChat,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'portfolio':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.portfolio''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'roompk':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.session_id''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'sessionID':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.session_id''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'messages':
                                                                          serializeParam(
                                                                        '',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Please Tell Us Your Name',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .showOpenChatUserNameFormAnCreateRoom =
                                                                        true;
                                                                  });
                                                                }
                                                              } else {
                                                                if (FFAppState()
                                                                        .sessionId ==
                                                                    '') {
                                                                  context.pushNamed(
                                                                      'LoginComponent');

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .imagePicked =
                                                                        false;
                                                                    FFAppState()
                                                                        .ActiveSession = [];
                                                                  });
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Opening Room for${getJsonField(
                                                                          activeProductsItem,
                                                                          r'''$.roomcreateName''',
                                                                        ).toString()}',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                  _model.newCreateRoomapiLogedInUser =
                                                                      await NewCreateRoomApiCall
                                                                          .call(
                                                                    userId: FFAppState()
                                                                        .userId,
                                                                    orgId: FFAppState()
                                                                        .organizationId,
                                                                    portfolioName:
                                                                        FFAppState()
                                                                            .portfolioname,
                                                                    productName:
                                                                        getJsonField(
                                                                      activeProductsItem,
                                                                      r'''$.roomcreateName''',
                                                                    ).toString(),
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .newCreateRoomapiLogedInUser
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    context
                                                                        .pushNamed(
                                                                      'ChatLoggedin',
                                                                      queryParameters:
                                                                          {
                                                                        'product':
                                                                            serializeParam(
                                                                          NewCreateRoomApiCall
                                                                              .productname(
                                                                            (_model.newCreateRoomapiLogedInUser?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'portfolio':
                                                                            serializeParam(
                                                                          NewCreateRoomApiCall
                                                                              .portfolioname(
                                                                            (_model.newCreateRoomapiLogedInUser?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'sessionID':
                                                                            serializeParam(
                                                                          FFAppState()
                                                                              .sessionId,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'messages':
                                                                            serializeParam(
                                                                          '',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'roompk':
                                                                            serializeParam(
                                                                          NewCreateRoomApiCall
                                                                              .roomroomid(
                                                                            (_model.newCreateRoomapiLogedInUser?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );

                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          '${NewCreateRoomApiCall.roomroomid(
                                                                            (_model.newCreateRoomapiLogedInUser?.jsonBody ??
                                                                                ''),
                                                                          ).toString()}',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 1750),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'failed ==${(_model.newCreateRoomapiLogedInUser?.jsonBody ?? '').toString()}',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .sessionId = '';
                                                                      FFAppState()
                                                                          .portfolioname = '';
                                                                      FFAppState()
                                                                          .userId = '';
                                                                      FFAppState()
                                                                          .organizationId = '';
                                                                      FFAppState()
                                                                              .showOpenChatUserNameFormAnCreateRoom =
                                                                          false;
                                                                      FFAppState()
                                                                          .ActiveSession = [];
                                                                    });

                                                                    context.pushNamed(
                                                                        'LoginComponent');

                                                                    _model.apiResultqbu =
                                                                        await LogoutCall
                                                                            .call(
                                                                      sessionId:
                                                                          FFAppState()
                                                                              .sessionId,
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                  }
                                                                }
                                                              }

                                                              if (_shouldSetState)
                                                                setState(() {});
                                                            },
                                                            onDoubleTap:
                                                                () async {},
                                                            child: Slidable(
                                                              endActionPane:
                                                                  ActionPane(
                                                                motion:
                                                                    const ScrollMotion(),
                                                                extentRatio:
                                                                    0.25,
                                                                children: [
                                                                  SlidableAction(
                                                                    label:
                                                                        'Share',
                                                                    backgroundColor:
                                                                        Colors
                                                                            .blue,
                                                                    icon: Icons
                                                                        .share,
                                                                    onPressed:
                                                                        (_) {
                                                                      print(
                                                                          'SlidableActionWidget pressed ...');
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              child: ListTile(
                                                                title: Text(
                                                                  getJsonField(
                                                                    activeProductsItem,
                                                                    r'''$.product''',
                                                                  ).toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFFC0303),
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                                ),
                                                                subtitle: Text(
                                                                  'Chat',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFD000000),
                                                                        fontSize:
                                                                            15.0,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                ),
                                                                trailing: Icon(
                                                                  Icons
                                                                      .arrow_forward_ios,
                                                                  color: Color(
                                                                      0xFFF18A8A),
                                                                  size: 20.0,
                                                                ),
                                                                tileColor:
                                                                    Colors
                                                                        .white,
                                                                dense: true,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    30.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons.chat,
                                                                  color: Color(
                                                                      0xFF015633),
                                                                  size: 32.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  var _shouldSetState =
                                                                      false;
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .ActiveSession = [];
                                                                  });
                                                                  if (getJsonField(
                                                                        activeProductsItem,
                                                                        r'''$.product''',
                                                                      ) ==
                                                                      FFAppState()
                                                                          .CommonRoom) {
                                                                    _model.sessionExistResultForComonRoomMain2 =
                                                                        await actions
                                                                            .checkSessionSavedOrNot(
                                                                      context,
                                                                      getJsonField(
                                                                        activeProductsItem,
                                                                        r'''$.product''',
                                                                      ).toString(),
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    if (_model
                                                                            .sessionExistResultForComonRoomMain2 ==
                                                                        'success') {
                                                                      context
                                                                          .pushNamed(
                                                                        'Chat',
                                                                        queryParameters:
                                                                            {
                                                                          'product':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              activeProductsItem,
                                                                              r'''$.product''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'portfolio':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.portfolio''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'roompk':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.room_pk''',
                                                                            ),
                                                                            ParamType.int,
                                                                          ),
                                                                          'sessionID':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.session_id''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'messages':
                                                                              serializeParam(
                                                                            '',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );

                                                                      if (_shouldSetState)
                                                                        setState(
                                                                            () {});
                                                                      return;
                                                                    } else {
                                                                      _model.gettingSessionFromApiComonRoomMain2 =
                                                                          await CheckHistoryCall
                                                                              .call(
                                                                        sessionId:
                                                                            'dskfldfdfd${getCurrentTimestamp.toString()}',
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .gettingSessionFromApiComonRoomMain2
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().loading =
                                                                              false;
                                                                        });
                                                                        await actions
                                                                            .saveSessionId(
                                                                          context,
                                                                          getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.product''',
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .sessionid(
                                                                            (_model.gettingSessionFromApiComonRoomMain2?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .portfolio(
                                                                            (_model.gettingSessionFromApiComonRoomMain2?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .roompk(
                                                                            (_model.gettingSessionFromApiComonRoomMain2?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                        );
                                                                        _model.sessionExistResultCommonRoomMain2 =
                                                                            await actions.checkSessionSavedOrNot(
                                                                          context,
                                                                          getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.product''',
                                                                          ).toString(),
                                                                        );
                                                                        _shouldSetState =
                                                                            true;
                                                                        if (_model.sessionExistResultCommonRoomMain2 ==
                                                                            'success') {
                                                                          context
                                                                              .pushNamed(
                                                                            'Chat',
                                                                            queryParameters:
                                                                                {
                                                                              'product': serializeParam(
                                                                                getJsonField(
                                                                                  activeProductsItem,
                                                                                  r'''$.product''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'portfolio': serializeParam(
                                                                                getJsonField(
                                                                                  FFAppState().ActiveSession.first,
                                                                                  r'''$.portfolio''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'roompk': serializeParam(
                                                                                getJsonField(
                                                                                  FFAppState().ActiveSession.first,
                                                                                  r'''$.room_pk''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                              'sessionID': serializeParam(
                                                                                getJsonField(
                                                                                  FFAppState().ActiveSession.first,
                                                                                  r'''$.session_id''',
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
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Unable to create Chat Link 2',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        }

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().loading =
                                                                              false;
                                                                        });
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Unable to create Chat Link',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                  }
                                                                  if (FFAppState()
                                                                          .sessionId ==
                                                                      '') {
                                                                    context.pushNamed(
                                                                        'LoginComponent');

                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .imagePicked =
                                                                          false;
                                                                      FFAppState()
                                                                          .ActiveSession = [];
                                                                    });
                                                                    _model.sessionExistResult3 =
                                                                        await actions
                                                                            .checkSessionSavedOrNot(
                                                                      context,
                                                                      getJsonField(
                                                                        activeProductsItem,
                                                                        r'''$.product''',
                                                                      ).toString(),
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    if (_model
                                                                            .sessionExistResult3 ==
                                                                        'success') {
                                                                      context
                                                                          .pushNamed(
                                                                        'Chat',
                                                                        queryParameters:
                                                                            {
                                                                          'product':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              activeProductsItem,
                                                                              r'''$.product''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'portfolio':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.portfolio''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'roompk':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.room_pk''',
                                                                            ),
                                                                            ParamType.int,
                                                                          ),
                                                                          'sessionID':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              FFAppState().ActiveSession.first,
                                                                              r'''$.session_id''',
                                                                            ).toString(),
                                                                            ParamType.String,
                                                                          ),
                                                                          'messages':
                                                                              serializeParam(
                                                                            '',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    } else {
                                                                      _model.gettingSessionFromApi2 =
                                                                          await CheckHistoryCall
                                                                              .call(
                                                                        sessionId:
                                                                            'dskfldfdfd${getCurrentTimestamp.toString()}',
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .gettingSessionFromApi2
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().loading =
                                                                              false;
                                                                        });
                                                                        await actions
                                                                            .saveSessionId(
                                                                          context,
                                                                          getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.product''',
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .sessionid(
                                                                            (_model.gettingSessionFromApi2?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .portfolio(
                                                                            (_model.gettingSessionFromApi2?.jsonBody ??
                                                                                ''),
                                                                          ).toString(),
                                                                          CheckHistoryCall
                                                                              .roompk(
                                                                            (_model.gettingSessionFromApi2?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                        );
                                                                        _model.sessionExistResult4 =
                                                                            await actions.checkSessionSavedOrNot(
                                                                          context,
                                                                          getJsonField(
                                                                            activeProductsItem,
                                                                            r'''$.product''',
                                                                          ).toString(),
                                                                        );
                                                                        _shouldSetState =
                                                                            true;

                                                                        context
                                                                            .pushNamed(
                                                                          'Chat',
                                                                          queryParameters:
                                                                              {
                                                                            'product':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                activeProductsItem,
                                                                                r'''$.product''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'portfolio':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                FFAppState().ActiveSession.first,
                                                                                r'''$.portfolio''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'roompk':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                FFAppState().ActiveSession.first,
                                                                                r'''$.room_pk''',
                                                                              ),
                                                                              ParamType.int,
                                                                            ),
                                                                            'sessionID':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                FFAppState().ActiveSession.first,
                                                                                r'''$.session_id''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'messages':
                                                                                serializeParam(
                                                                              '',
                                                                              ParamType.String,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().loading =
                                                                              false;
                                                                        });
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Unable to create Chat Link',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                      }
                                                                    }
                                                                  }

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                },
                                                              ),
                                                              Text(
                                                                'Chat',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 10.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Visibility(
                                                  visible: responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Chat',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                            'Chat',
                                                            queryParameters: {
                                                              'product':
                                                                  serializeParam(
                                                                'test',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'portfolio':
                                                                  serializeParam(
                                                                '5',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'roompk':
                                                                  serializeParam(
                                                                2,
                                                                ParamType.int,
                                                              ),
                                                              'sessionID':
                                                                  serializeParam(
                                                                'chbvjhv',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'messages':
                                                                  serializeParam(
                                                                'gn',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: 'chat\n',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
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
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Colors.white,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.00,
                                                                      0.00),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Stack(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/Playstore_logo_(4).png',
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.00,
                                                                          0.95),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          'Coming Soon',
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFFFC0303),
                                                                                fontSize: 10.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.list,
                                                          color:
                                                              Color(0xFFC8C6C5),
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      Container(
                                                        width: 175.0,
                                                        height: 60.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'CXindexchatpage');
                                                          },
                                                          child: Slidable(
                                                            endActionPane:
                                                                ActionPane(
                                                              motion:
                                                                  const ScrollMotion(),
                                                              extentRatio: 0.25,
                                                              children: [
                                                                SlidableAction(
                                                                  label:
                                                                      'Share',
                                                                  backgroundColor:
                                                                      Colors
                                                                          .blue,
                                                                  icon: Icons
                                                                      .share,
                                                                  onPressed:
                                                                      (_) {
                                                                    print(
                                                                        'SlidableActionWidget pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            child: ListTile(
                                                              title: Text(
                                                                'CX Index',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFFC0303),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                              ),
                                                              subtitle: Text(
                                                                'Chat',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFD000000),
                                                                      fontSize:
                                                                          15.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w200,
                                                                    ),
                                                              ),
                                                              trailing: Icon(
                                                                Icons
                                                                    .arrow_forward_ios,
                                                                color: Color(
                                                                    0xFFF18A8A),
                                                                size: 20.0,
                                                              ),
                                                              tileColor:
                                                                  Colors.white,
                                                              dense: true,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Colors.white,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.00,
                                                                      0.00),
                                                              child: Container(
                                                                width: 100.0,
                                                                height: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/Playstore_logo_(6).png',
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.00,
                                                                          0.95),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          'Coming Soon',
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFFFC0303),
                                                                                fontSize: 10.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 60.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .list,
                                                              color: Color(
                                                                  0xFFC8C6C5),
                                                              size: 30.0,
                                                            ),
                                                            onPressed: () {
                                                              print(
                                                                  'IconButton pressed ...');
                                                            },
                                                          ),
                                                          Container(
                                                            width: 175.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context.pushNamed(
                                                                    'CXindexchatpage');
                                                              },
                                                              child: Slidable(
                                                                endActionPane:
                                                                    ActionPane(
                                                                  motion:
                                                                      const ScrollMotion(),
                                                                  extentRatio:
                                                                      0.25,
                                                                  children: [
                                                                    SlidableAction(
                                                                      label:
                                                                          'Share',
                                                                      backgroundColor:
                                                                          Colors
                                                                              .blue,
                                                                      icon: Icons
                                                                          .share,
                                                                      onPressed:
                                                                          (_) {
                                                                        print(
                                                                            'SlidableActionWidget pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                                child: ListTile(
                                                                  title: Text(
                                                                    'Scales',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFFFC0303),
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle:
                                                                              FontStyle.italic,
                                                                        ),
                                                                  ),
                                                                  subtitle:
                                                                      Text(
                                                                    'Chat',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFD000000),
                                                                          fontSize:
                                                                              15.0,
                                                                          fontWeight:
                                                                              FontWeight.w200,
                                                                        ),
                                                                  ),
                                                                  trailing:
                                                                      Icon(
                                                                    Icons
                                                                        .arrow_forward_ios,
                                                                    color: Color(
                                                                        0xFFF18A8A),
                                                                    size: 20.0,
                                                                  ),
                                                                  tileColor:
                                                                      Colors
                                                                          .white,
                                                                  dense: true,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Colors.white,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/Playstore_logo.png',
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.95),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      'Coming Soon',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Color(0xFFFC0303),
                                                                            fontSize:
                                                                                10.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.list,
                                                          color:
                                                              Color(0xFFC8C6C5),
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      Container(
                                                        width: 175.0,
                                                        height: 60.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'CXindexchatpage');
                                                          },
                                                          child: Slidable(
                                                            endActionPane:
                                                                ActionPane(
                                                              motion:
                                                                  const ScrollMotion(),
                                                              extentRatio: 0.25,
                                                              children: [
                                                                SlidableAction(
                                                                  label:
                                                                      'Share',
                                                                  backgroundColor:
                                                                      Colors
                                                                          .blue,
                                                                  icon: Icons
                                                                      .share,
                                                                  onPressed:
                                                                      (_) {
                                                                    print(
                                                                        'SlidableActionWidget pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            child: ListTile(
                                                              title: Text(
                                                                'Samanta',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFFC0303),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                              ),
                                                              subtitle: Text(
                                                                'Chat',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFD000000),
                                                                      fontSize:
                                                                          15.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w200,
                                                                    ),
                                                              ),
                                                              trailing: Icon(
                                                                Icons
                                                                    .arrow_forward_ios,
                                                                color: Color(
                                                                    0xFFF18A8A),
                                                                size: 20.0,
                                                              ),
                                                              tileColor:
                                                                  Colors.white,
                                                              dense: true,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Colors.white,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/Playstore_logo_(5).png',
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.90),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      'Coming Soon',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Color(0xFFFC0303),
                                                                            fontSize:
                                                                                10.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.list,
                                                          color:
                                                              Color(0xFFC8C6C5),
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      Container(
                                                        width: 175.0,
                                                        height: 60.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'CXindexchatpage');
                                                          },
                                                          child: Slidable(
                                                            endActionPane:
                                                                ActionPane(
                                                              motion:
                                                                  const ScrollMotion(),
                                                              extentRatio: 0.25,
                                                              children: [
                                                                SlidableAction(
                                                                  label:
                                                                      'Share',
                                                                  backgroundColor:
                                                                      Colors
                                                                          .blue,
                                                                  icon: Icons
                                                                      .share,
                                                                  onPressed:
                                                                      (_) {
                                                                    print(
                                                                        'SlidableActionWidget pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            child: ListTile(
                                                              title: Text(
                                                                'UX Live',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFFC0303),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                              ),
                                                              subtitle: Text(
                                                                'Chat',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFD000000),
                                                                      fontSize:
                                                                          15.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w200,
                                                                    ),
                                                              ),
                                                              trailing: Icon(
                                                                Icons
                                                                    .arrow_forward_ios,
                                                                color: Color(
                                                                    0xFFF18A8A),
                                                                size: 20.0,
                                                              ),
                                                              tileColor:
                                                                  Colors.white,
                                                              dense: true,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: Colors.white,
                                                  elevation: 8.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Image.asset(
                                                                  'assets/images/Logo_500*500.png',
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200.0,
                                                        height: 60.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            _model.sessionExistResultForComonRoom =
                                                                await actions
                                                                    .checkSessionSavedOrNot(
                                                              context,
                                                              'Common_room',
                                                            );
                                                            _shouldSetState =
                                                                true;
                                                            if (_model
                                                                    .sessionExistResultForComonRoom ==
                                                                'success') {
                                                              context.pushNamed(
                                                                'Chat',
                                                                queryParameters:
                                                                    {
                                                                  'product':
                                                                      serializeParam(
                                                                    'Common_room',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'portfolio':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .ActiveSession
                                                                          .first,
                                                                      r'''$.portfolio''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'roompk':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .ActiveSession
                                                                          .first,
                                                                      r'''$.room_pk''',
                                                                    ),
                                                                    ParamType
                                                                        .int,
                                                                  ),
                                                                  'sessionID':
                                                                      serializeParam(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .ActiveSession
                                                                          .first,
                                                                      r'''$.session_id''',
                                                                    ).toString(),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'messages':
                                                                      serializeParam(
                                                                    '',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              _model.gettingSessionFromApiComonRoom =
                                                                  await CheckHistoryCall
                                                                      .call(
                                                                sessionId:
                                                                    'dskfldfdfd${getCurrentTimestamp.toString()}',
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .gettingSessionFromApiComonRoom
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .loading =
                                                                      false;
                                                                });
                                                                await actions
                                                                    .saveSessionId(
                                                                  context,
                                                                  'Common_room',
                                                                  CheckHistoryCall
                                                                      .sessionid(
                                                                    (_model.gettingSessionFromApiComonRoom
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString(),
                                                                  CheckHistoryCall
                                                                      .portfolio(
                                                                    (_model.gettingSessionFromApiComonRoom
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString(),
                                                                  CheckHistoryCall
                                                                      .roompk(
                                                                    (_model.gettingSessionFromApiComonRoom
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                );
                                                                _model.sessionExistResultCommonRoom2 =
                                                                    await actions
                                                                        .checkSessionSavedOrNot(
                                                                  context,
                                                                  'Common_room',
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if (_model
                                                                        .sessionExistResultCommonRoom2 ==
                                                                    'success') {
                                                                  context
                                                                      .pushNamed(
                                                                    'Chat',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        'Common_room',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'portfolio':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.portfolio''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'roompk':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.room_pk''',
                                                                        ),
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                      'sessionID':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          FFAppState()
                                                                              .ActiveSession
                                                                              .first,
                                                                          r'''$.session_id''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'messages':
                                                                          serializeParam(
                                                                        '',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                } else {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Unable to create Chat Link 2',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }

                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                return;
                                                              } else {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .loading =
                                                                      false;
                                                                });
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Unable to create Chat Link',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                  ),
                                                                );
                                                              }
                                                            }

                                                            if (_shouldSetState)
                                                              setState(() {});
                                                          },
                                                          child: Slidable(
                                                            endActionPane:
                                                                ActionPane(
                                                              motion:
                                                                  const ScrollMotion(),
                                                              extentRatio: 0.25,
                                                              children: [
                                                                SlidableAction(
                                                                  label:
                                                                      'Share',
                                                                  backgroundColor:
                                                                      Colors
                                                                          .blue,
                                                                  icon: Icons
                                                                      .share,
                                                                  onPressed:
                                                                      (_) {
                                                                    print(
                                                                        'SlidableActionWidget pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            child: ListTile(
                                                              title: Text(
                                                                'Common room',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFFC0303),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                              ),
                                                              subtitle: Text(
                                                                'Chat',
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFD000000),
                                                                      fontSize:
                                                                          15.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w200,
                                                                    ),
                                                              ),
                                                              trailing: Icon(
                                                                Icons
                                                                    .arrow_forward_ios,
                                                                color: Color(
                                                                    0xFFF18A8A),
                                                                size: 20.0,
                                                              ),
                                                              tileColor:
                                                                  Colors.white,
                                                              dense: true,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.85, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 50.0,
                                                                5.0, 0.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (FFAppState()
                                                                    .sessionId ==
                                                                '') {
                                                              context.pushNamed(
                                                                  'LoginComponent');
                                                            } else {
                                                              setState(() {
                                                                FFAppState()
                                                                        .imagePicked =
                                                                    false;
                                                                FFAppState()
                                                                    .sessionId = '';
                                                                FFAppState()
                                                                    .sessions = [];
                                                                FFAppState()
                                                                    .ActiveSession = [];
                                                                FFAppState()
                                                                    .imagePickedFile = '';
                                                                FFAppState()
                                                                        .SendingMessage =
                                                                    false;
                                                                FFAppState()
                                                                        .shimmer =
                                                                    false;
                                                                FFAppState()
                                                                    .userId = '';
                                                                FFAppState()
                                                                    .portfolioname = '';
                                                                FFAppState()
                                                                    .organizationId = '';
                                                              });
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .clearSnackBars();
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Logging Out...',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          1500));

                                                              context.pushNamed(
                                                                  'LoginComponent');

                                                              _model.logoutApires =
                                                                  await LogoutCall
                                                                      .call(
                                                                sessionId:
                                                                    FFAppState()
                                                                        .sessionId,
                                                              );
                                                            }

                                                            setState(() {});
                                                          },
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.05,
                                                                        -0.13),
                                                                child: Icon(
                                                                  Icons.login,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.10,
                                                                        0.81),
                                                                child: Text(
                                                                  FFAppState().sessionId ==
                                                                          ''
                                                                      ? 'Login'
                                                                      : 'Log Out',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFFC0303),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 50.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await launchURL(
                                                            'https://chrome.google.com/webstore/detail/dowell-ux-living-lab/acnnapiadbgagcnidgnclaohnpmbpebl?hl=en-GB');
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width: 100.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.1,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.05,
                                                                        -0.13),
                                                                child: Icon(
                                                                  Icons
                                                                      .extension,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.10,
                                                                        0.81),
                                                                child: Text(
                                                                  'Extension',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFFC0303),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.85, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 50.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (FFAppState()
                                                                .sessionId ==
                                                            '') {
                                                          context.pushNamed(
                                                              'LoginComponent');
                                                        } else {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                  child:
                                                                      GestureDetector(
                                                                onTap: () => _model
                                                                        .unfocusNode
                                                                        .canRequestFocus
                                                                    ? FocusScope.of(
                                                                            context)
                                                                        .requestFocus(_model
                                                                            .unfocusNode)
                                                                    : FocusScope.of(
                                                                            context)
                                                                        .unfocus(),
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      ShowChoseBookWidget(),
                                                                ),
                                                              ));
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        }
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width: 100.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.1,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.06,
                                                                        -0.18),
                                                                child: Icon(
                                                                  Icons.person,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.10,
                                                                        0.81),
                                                                child: Text(
                                                                  'Book a Client',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFFC0303),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.85, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    ShowChoseReferulWidget(),
                                                              ),
                                                            ));
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width: 140.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.1,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.06,
                                                                        -0.18),
                                                                child: Icon(
                                                                  Icons.person,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.10,
                                                                        0.81),
                                                                child: Text(
                                                                  'Referral Program',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFFC0303),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.65, 0.00),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await launchURL(
                                                            'https://play.google.com/store/apps/developer?id=DoWell+UX+Living+Lab&hl=en-IN');
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.36,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.67,
                                                                        0.00),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .googlePlay,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.45,
                                                                        0.04),
                                                                child: Text(
                                                                  'Google \nPlaystore',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.70, 0.00),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await launchURL(
                                                            'https://apps.apple.com/us/developer/dowell-research/id1648847971');
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.36,
                                                          height: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.67,
                                                                        0.00),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .appStore,
                                                                  color: Color(
                                                                      0xFFFC0303),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.24,
                                                                        0.04),
                                                                child: Text(
                                                                  'App\nStore',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed('FAQpages');
                                                },
                                                text: 'FAQS',
                                                options: FFButtonOptions(
                                                  width: 200.0,
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.white,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFCA3A46),
                                                      ),
                                                  elevation: 5.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Text(
                                '@uxlivinglab',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF248B0A),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Text(
                              '230220SA022',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFAEADAD),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (FFAppState().showOpenChatUserNameFormAnCreateRoom &&
                  responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        FFAppState().showOpenChatUserNameFormAnCreateRoom =
                            false;
                      });
                    },
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: Color(0x59FFFFFF),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.newopenChatUserNamePopUpModel,
                            updateCallback: () => setState(() {}),
                            child: NewopenChatUserNamePopUpWidget(
                              productName: 'SALESAGENT',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
