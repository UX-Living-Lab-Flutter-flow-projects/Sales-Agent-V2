import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wifiqrcodechatpage_model.dart';
export 'wifiqrcodechatpage_model.dart';

class WifiqrcodechatpageWidget extends StatefulWidget {
  const WifiqrcodechatpageWidget({Key? key}) : super(key: key);

  @override
  _WifiqrcodechatpageWidgetState createState() =>
      _WifiqrcodechatpageWidgetState();
}

class _WifiqrcodechatpageWidgetState extends State<WifiqrcodechatpageWidget> {
  late WifiqrcodechatpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WifiqrcodechatpageModel());

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
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.05,
                decoration: BoxDecoration(
                  color: Color(0xFFF18A8A),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Text(
                    'Wifi QR Code Chat',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.7,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                  maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: FlutterFlowWebView(
                  content:
                      'https://ll04-finance-dowell.github.io/100069-dowellchat-WifiQrCode/',
                  bypass: false,
                  height: 650.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
