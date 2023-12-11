import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'features_digitalq_model.dart';
export 'features_digitalq_model.dart';

class FeaturesDigitalqWidget extends StatefulWidget {
  const FeaturesDigitalqWidget({Key? key}) : super(key: key);

  @override
  _FeaturesDigitalqWidgetState createState() => _FeaturesDigitalqWidgetState();
}

class _FeaturesDigitalqWidgetState extends State<FeaturesDigitalqWidget> {
  late FeaturesDigitalqModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeaturesDigitalqModel());

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
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: FlutterFlowSwipeableStack(
                    topCardHeightFraction: 0.72,
                    middleCardHeightFraction: 0.68,
                    bottomCardHeightFraction: 0.75,
                    topCardWidthFraction: 0.9,
                    middleCardWidthFraction: 0.85,
                    bottomCardWidthFraction: 0.8,
                    onSwipeFn: (index) {},
                    onLeftSwipe: (index) {},
                    onRightSwipe: (index) async {
                      context.goNamed('Home');
                    },
                    onUpSwipe: (index) {},
                    onDownSwipe: (index) {},
                    itemBuilder: (context, index) {
                      return [
                        () => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://dowell-digitalq-manager.flutterflow.app/');
                              },
                              child: Image.asset(
                                'assets/images/cxi3o_1.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                        () => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://menu-creation.flutterflow.app/');
                              },
                              child: Image.asset(
                                'assets/images/g2t7j_2.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                        () => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://dowell-digitalq-customer.flutterflow.app/');
                              },
                              child: Image.asset(
                                'assets/images/3mjpg_4.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                      ][index]();
                    },
                    itemCount: 3,
                    controller: _model.swipeableStackController,
                    enableSwipeUp: false,
                    enableSwipeDown: false,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.95,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://www.youtube.com/channel/UCVZQJgX056ixCl--cvBIXQQ');
                                    },
                                    text: '',
                                    icon: FaIcon(
                                      FontAwesomeIcons.youtube,
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFECEAEA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFF000E),
                                            fontSize: 10.0,
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
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://qrcode.reviews/digital-q-hammad111/');
                                    },
                                    text: '',
                                    icon: FaIcon(
                                      FontAwesomeIcons.globe,
                                      color: Color(0xFF0987E8),
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFECEAEA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFF000E),
                                            fontSize: 10.0,
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
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://www.linkedin.com/showcase/digitalqueue/?viewAsMember=true');
                                    },
                                    text: '',
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedinIn,
                                      color: Color(0xFF0987E8),
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFECEAEA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFF000E),
                                            fontSize: 10.0,
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
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://dowell-digitalq-manager.flutterflow.app/');
                                    },
                                    text: '',
                                    icon: FaIcon(
                                      FontAwesomeIcons.cloudDownloadAlt,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFECEAEA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFF000E),
                                            fontSize: 10.0,
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
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(
                                          'https://dowell-digitalq-customer.flutterflow.app/');
                                    },
                                    text: '',
                                    icon: FaIcon(
                                      FontAwesomeIcons.cloudDownloadAlt,
                                      color: Color(0xFF2FD106),
                                    ),
                                    options: FFButtonOptions(
                                      width: 50.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFECEAEA),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFF000E),
                                            fontSize: 10.0,
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
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(
                                      'https://www.canva.com/design/DAFMNs1UEPk/ey0MjeTDYyRwZpl_I5djPg/watch?utm_content=DAFMNs1UEPk&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink');
                                },
                                text: 'Presentation',
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFECEAEA),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFF000E),
                                        fontSize: 10.0,
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
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(
                                      'https://workflowai.online/en/');
                                },
                                text: 'FAQ',
                                options: FFButtonOptions(
                                  width: 60.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFECEAEA),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFF000E),
                                        fontSize: 10.0,
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
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('agentterms');
                                },
                                text: 'Agent Terms',
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFECEAEA),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFF000E),
                                        fontSize: 10.0,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
