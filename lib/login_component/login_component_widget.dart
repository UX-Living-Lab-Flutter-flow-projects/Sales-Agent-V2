import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_component_model.dart';
export 'login_component_model.dart';

class LoginComponentWidget extends StatefulWidget {
  const LoginComponentWidget({Key? key}) : super(key: key);

  @override
  _LoginComponentWidgetState createState() => _LoginComponentWidgetState();
}

class _LoginComponentWidgetState extends State<LoginComponentWidget> {
  late LoginComponentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginComponentModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: custom_widgets.LoginForm(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              location: currentUserLocationValue?.toString(),
              os: isAndroid ? 'Android' : 'Ios',
              createAJsonVariableInAppStateNamedResponse: 'done',
              navigateTo: () async {
                _model.adminId = await actions.toString(
                  getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.client_admin_id''',
                  ).toString(),
                );
                if (_model.adminId == '6390b313d77dc467630713f2') {
                  context.pushNamed('admin_panal');
                } else {
                  context.pushNamed('Home');
                }

                _model.creatPortfolioApi = await CreateProtfolioCall.call(
                  username: getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.username''',
                  ).toString(),
                  sessionId: FFAppState().sessionId,
                  userId: getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.userID''',
                  ).toString(),
                  orgId: getJsonField(
                    FFAppState().response,
                    r'''$.portfolio_info[0].org_id''',
                  ).toString(),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      (_model.creatPortfolioApi?.jsonBody ?? '').toString(),
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: Duration(milliseconds: 10000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
                setState(() {
                  FFAppState().name = '';
                  FFAppState().country = '';
                  FFAppState().city = '';
                });
                setState(() {
                  FFAppState().name = getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.first_name''',
                  ).toString();
                  FFAppState().country = getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.country''',
                  ).toString();
                  FFAppState().city = getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.city''',
                  ).toString();
                  FFAppState().userId = getJsonField(
                    FFAppState().response,
                    r'''$.userinfo.userID''',
                  ).toString();
                });
                if ((_model.creatPortfolioApi?.succeeded ?? true)) {
                  setState(() {
                    FFAppState().portfolioname =
                        CreateProtfolioCall.portfolioname(
                      (_model.creatPortfolioApi?.jsonBody ?? ''),
                    ).toString();
                    FFAppState().organizationId =
                        CreateProtfolioCall.portfolioorganization(
                      (_model.creatPortfolioApi?.jsonBody ?? ''),
                    ).toString();
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${CreateProtfolioCall.portfolioname(
                          (_model.creatPortfolioApi?.jsonBody ?? ''),
                        ).toString()} \'s portfolio found',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'portfolio_name not found please checkand login again',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 6200),
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                    ),
                  );
                }

                setState(() {});
              },
              signUp: () async {
                context.pushNamed('Signup');
              },
            ),
          ),
        ),
      ),
    );
  }
}
