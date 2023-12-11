import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _sessionId = prefs.getString('ff_sessionId') ?? _sessionId;
    });
    _safeInit(() {
      _image = prefs.getString('ff_image') ?? _image;
    });
    _safeInit(() {
      _text = prefs.getString('ff_text') ?? _text;
    });
    _safeInit(() {
      _sessions = prefs.getStringList('ff_sessions')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _sessions;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_response')) {
        try {
          _response = jsonDecode(prefs.getString('ff_response') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _openChatUserName =
          prefs.getString('ff_openChatUserName') ?? _openChatUserName;
    });
    _safeInit(() {
      _portfolioname = prefs.getString('ff_portfolioname') ?? _portfolioname;
    });
    _safeInit(() {
      _userId = prefs.getString('ff_userId') ?? _userId;
    });
    _safeInit(() {
      _organizationId = prefs.getString('ff_organizationId') ?? _organizationId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _sessionId = '';
  String get sessionId => _sessionId;
  set sessionId(String _value) {
    _sessionId = _value;
    prefs.setString('ff_sessionId', _value);
  }

  bool _imagePicked = false;
  bool get imagePicked => _imagePicked;
  set imagePicked(bool _value) {
    _imagePicked = _value;
  }

  String _imagePickedFile = '';
  String get imagePickedFile => _imagePickedFile;
  set imagePickedFile(String _value) {
    _imagePickedFile = _value;
  }

  bool _SendingMessage = false;
  bool get SendingMessage => _SendingMessage;
  set SendingMessage(bool _value) {
    _SendingMessage = _value;
  }

  bool _shimmer = false;
  bool get shimmer => _shimmer;
  set shimmer(bool _value) {
    _shimmer = _value;
  }

  String _image = 'IMAGE';
  String get image => _image;
  set image(String _value) {
    _image = _value;
    prefs.setString('ff_image', _value);
  }

  String _text = 'TEXT';
  String get text => _text;
  set text(String _value) {
    _text = _value;
    prefs.setString('ff_text', _value);
  }

  List<String> _Products = [
    'Digital Q',
    'Workflow AI',
    'Wifi QR Code',
    'Common Room'
  ];
  List<String> get Products => _Products;
  set Products(List<String> _value) {
    _Products = _value;
  }

  void addToProducts(String _value) {
    _Products.add(_value);
  }

  void removeFromProducts(String _value) {
    _Products.remove(_value);
  }

  void removeAtIndexFromProducts(int _index) {
    _Products.removeAt(_index);
  }

  void updateProductsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Products[_index] = updateFn(_Products[_index]);
  }

  void insertAtIndexInProducts(int _index, String _value) {
    _Products.insert(_index, _value);
  }

  List<dynamic> _Product = [
    jsonDecode(
        '{\"product\":\"Open Chat\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/humbs3vqaj93/Logo_500*500.png\",\"link\":\"\",\"status\":\"active\"}'),
    jsonDecode(
        '{\"product\":\"Workflow AI\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/857g84cfc1dt/Playstore_logo_(2).png\",\"link\":\"featues_workflowai\",\"status\":\"active\",\"roomcreateName\":\"WORKFLOWAI\"}'),
    jsonDecode(
        '{\"product\":\"Wifi QR Code\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/nj2wl7ep3amp/wifi_QR_code.png\",\"link\":\"featues_wifiqrcode\",\"status\":\"active\",\"roomcreateName\":\"WIFIQRCODE\"}'),
    jsonDecode(
        '{\"product\":\"TEAMMANAGEMENT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"TEAMMANAGEMENT\"}'),
    jsonDecode(
        '{\"product\":\"Scales\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/kc4sd3973ka1/Playstore_logo_(6).png\",\"link\":\"\",\"status\":\"active\",\"roomcreateName\":\"LIVINGLABSCALES\"}'),
    jsonDecode(
        '{\"product\":\"Samanta\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/f6jcg6ntmoeb/Playstore_logo.png\",\"link\":\"\",\"status\":\"active\",\"roomcreateName\":\"DIGITAL Q\"}'),
    jsonDecode(
        '{\"product\":\"UX Live\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/1u8cnrb0s6zo/Playstore_logo_(5).png\",\"link\":\"\",\"status\":\"active\",\"roomcreateName\":\"DIGITAL Q\"}'),
    jsonDecode(
        '{\"product\":\"SALESAGENTLOGIN\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"SALESAGENTLOGIN\"}'),
    jsonDecode(
        '{\"product\":\"LEGALZARD\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"LEGALZARD\"}'),
    jsonDecode(
        '{\"product\":\"USEREXPERIENCELIVE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"USEREXPERIENCELIVE\"}'),
    jsonDecode(
        '{\"product\":\"SOCIALMEDIAAUTOMATION\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"SOCIALMEDIAAUTOMATION\"}'),
    jsonDecode(
        '{\"product\":\"LIVINGLABSCALES\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/kc4sd3973ka1/Playstore_logo_(6).png\",\"link\":\"\",\"status\":\"active\",\"roomcreateName\":\"LIVINGLABSCALES\"}'),
    jsonDecode(
        '{\"product\":\"LOGOSCAN\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"LOGOSCAN\"}'),
    jsonDecode(
        '{\"product\":\"LIVINGLABMONITORING\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"LIVINGLABMONITORING\"}'),
    jsonDecode(
        '{\"product\":\"PERMUTATIONCALCULATOR\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"PERMUTATIONCALCULATOR\"}'),
    jsonDecode(
        '{\"product\":\"SECUREREPOSITORIES\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"SECUREREPOSITORIES\"}'),
    jsonDecode(
        '{\"product\":\"SECUREDATA\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"SECUREDATA\"}'),
    jsonDecode(
        '{\"product\":\"CUSTOMEREXPERIENCE\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"CUSTOMEREXPERIENCE\"}'),
    jsonDecode(
        '{\"product\":\"DOWELLCSC\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"DOWELLCSC\"}'),
    jsonDecode(
        '{\"product\":\"LIVINGLABCHAT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"LIVINGLABCHAT\"}'),
    jsonDecode(
        '{\"product\":\"LOGIN\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"LOGIN\"}'),
    jsonDecode(
        '{\"product\":\"TEAMMANAGEMENT\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tutorial-i81rmd/assets/ea8qk50gebo5/2.png%22,%22link%22:%22features_digitalq%22,%22status%22:%22active%22,%22roomcreateName%22:%22DIGITAL Q\",\"roomcreateName\":\"TEAMMANAGEMENT\"}')
  ];
  List<dynamic> get Product => _Product;
  set Product(List<dynamic> _value) {
    _Product = _value;
  }

  void addToProduct(dynamic _value) {
    _Product.add(_value);
  }

  void removeFromProduct(dynamic _value) {
    _Product.remove(_value);
  }

  void removeAtIndexFromProduct(int _index) {
    _Product.removeAt(_index);
  }

  void updateProductAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _Product[_index] = updateFn(_Product[_index]);
  }

  void insertAtIndexInProduct(int _index, dynamic _value) {
    _Product.insert(_index, _value);
  }

  List<dynamic> _ActiveSession = [];
  List<dynamic> get ActiveSession => _ActiveSession;
  set ActiveSession(List<dynamic> _value) {
    _ActiveSession = _value;
  }

  void addToActiveSession(dynamic _value) {
    _ActiveSession.add(_value);
  }

  void removeFromActiveSession(dynamic _value) {
    _ActiveSession.remove(_value);
  }

  void removeAtIndexFromActiveSession(int _index) {
    _ActiveSession.removeAt(_index);
  }

  void updateActiveSessionAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ActiveSession[_index] = updateFn(_ActiveSession[_index]);
  }

  void insertAtIndexInActiveSession(int _index, dynamic _value) {
    _ActiveSession.insert(_index, _value);
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool _value) {
    _loading = _value;
  }

  String _featuresdigitalq = 'features_digitalq';
  String get featuresdigitalq => _featuresdigitalq;
  set featuresdigitalq(String _value) {
    _featuresdigitalq = _value;
  }

  String _featuesworkflowai = 'featues_workflowai';
  String get featuesworkflowai => _featuesworkflowai;
  set featuesworkflowai(String _value) {
    _featuesworkflowai = _value;
  }

  String _featueswifiqrcode = 'featues_wifiqrcode';
  String get featueswifiqrcode => _featueswifiqrcode;
  set featueswifiqrcode(String _value) {
    _featueswifiqrcode = _value;
  }

  String _ComingSoon = 'Coming Soon';
  String get ComingSoon => _ComingSoon;
  set ComingSoon(String _value) {
    _ComingSoon = _value;
  }

  String _Active = 'active';
  String get Active => _Active;
  set Active(String _value) {
    _Active = _value;
  }

  String _CommonRoom = 'Open Chat';
  String get CommonRoom => _CommonRoom;
  set CommonRoom(String _value) {
    _CommonRoom = _value;
  }

  List<dynamic> _sessions = [];
  List<dynamic> get sessions => _sessions;
  set sessions(List<dynamic> _value) {
    _sessions = _value;
    prefs.setStringList(
        'ff_sessions', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSessions(dynamic _value) {
    _sessions.add(_value);
    prefs.setStringList(
        'ff_sessions', _sessions.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSessions(dynamic _value) {
    _sessions.remove(_value);
    prefs.setStringList(
        'ff_sessions', _sessions.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSessions(int _index) {
    _sessions.removeAt(_index);
    prefs.setStringList(
        'ff_sessions', _sessions.map((x) => jsonEncode(x)).toList());
  }

  void updateSessionsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _sessions[_index] = updateFn(_sessions[_index]);
    prefs.setStringList(
        'ff_sessions', _sessions.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSessions(int _index, dynamic _value) {
    _sessions.insert(_index, _value);
    prefs.setStringList(
        'ff_sessions', _sessions.map((x) => jsonEncode(x)).toList());
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
  }

  String _country = '';
  String get country => _country;
  set country(String _value) {
    _country = _value;
  }

  String _city = '';
  String get city => _city;
  set city(String _value) {
    _city = _value;
  }

  dynamic _response;
  dynamic get response => _response;
  set response(dynamic _value) {
    _response = _value;
    prefs.setString('ff_response', jsonEncode(_value));
  }

  String _openChatUserName = '';
  String get openChatUserName => _openChatUserName;
  set openChatUserName(String _value) {
    _openChatUserName = _value;
    prefs.setString('ff_openChatUserName', _value);
  }

  bool _showOpenChatUserNameFormAnCreateRoom = false;
  bool get showOpenChatUserNameFormAnCreateRoom =>
      _showOpenChatUserNameFormAnCreateRoom;
  set showOpenChatUserNameFormAnCreateRoom(bool _value) {
    _showOpenChatUserNameFormAnCreateRoom = _value;
  }

  String _OpenChat = 'Open Chat';
  String get OpenChat => _OpenChat;
  set OpenChat(String _value) {
    _OpenChat = _value;
  }

  String _portfolioname = '';
  String get portfolioname => _portfolioname;
  set portfolioname(String _value) {
    _portfolioname = _value;
    prefs.setString('ff_portfolioname', _value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String _value) {
    _userId = _value;
    prefs.setString('ff_userId', _value);
  }

  String _organizationId = '';
  String get organizationId => _organizationId;
  set organizationId(String _value) {
    _organizationId = _value;
    prefs.setString('ff_organizationId', _value);
  }

  String _adminid = '6390b313d77dc467630713f2';
  String get adminid => _adminid;
  set adminid(String _value) {
    _adminid = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
