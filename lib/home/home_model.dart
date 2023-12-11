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
import 'home_widget.dart' show HomeWidget;
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

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Create Protfolio)] action in Home widget.
  ApiCallResponse? apiResultaw5;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in ListTile widget.
  String? sessionExistResultForComonRoomMain;
  // Stores action output result for [Backend Call - API (new create room Api )] action in ListTile widget.
  ApiCallResponse? newCreateRoomapiLogedInUser;
  // Stores action output result for [Backend Call - API (logout)] action in ListTile widget.
  ApiCallResponse? apiResultqbu;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in IconButton widget.
  String? sessionExistResultForComonRoomMain2;
  // Stores action output result for [Backend Call - API (CheckHistory)] action in IconButton widget.
  ApiCallResponse? gettingSessionFromApiComonRoomMain2;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in IconButton widget.
  String? sessionExistResultCommonRoomMain2;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in IconButton widget.
  String? sessionExistResult3;
  // Stores action output result for [Backend Call - API (CheckHistory)] action in IconButton widget.
  ApiCallResponse? gettingSessionFromApi2;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in IconButton widget.
  String? sessionExistResult4;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in ListTile widget.
  String? sessionExistResultForComonRoom;
  // Stores action output result for [Backend Call - API (CheckHistory)] action in ListTile widget.
  ApiCallResponse? gettingSessionFromApiComonRoom;
  // Stores action output result for [Custom Action - checkSessionSavedOrNot] action in ListTile widget.
  String? sessionExistResultCommonRoom2;
  // Stores action output result for [Backend Call - API (logout)] action in Stack widget.
  ApiCallResponse? logoutApires;
  // Model for NewopenChatUserNamePopUp component.
  late NewopenChatUserNamePopUpModel newopenChatUserNamePopUpModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newopenChatUserNamePopUpModel =
        createModel(context, () => NewopenChatUserNamePopUpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    newopenChatUserNamePopUpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
