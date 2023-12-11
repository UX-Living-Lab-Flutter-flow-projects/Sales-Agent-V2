import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/Sales_agent_app.png',
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          : HomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/Sales_agent_app.png',
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : HomeWidget(),
          routes: [
            FFRoute(
              name: 'features_digitalq',
              path: 'featuresDigitalq',
              builder: (context, params) => FeaturesDigitalqWidget(),
            ),
            FFRoute(
              name: 'Presentation',
              path: 'presentation',
              builder: (context, params) => PresentationWidget(),
            ),
            FFRoute(
              name: 'Flyers',
              path: 'flyers',
              builder: (context, params) => FlyersWidget(),
            ),
            FFRoute(
              name: 'Live',
              path: 'live',
              builder: (context, params) => LiveWidget(),
            ),
            FFRoute(
              name: 'featues_workflowai',
              path: 'featuesWorkflowai',
              builder: (context, params) => FeatuesWorkflowaiWidget(),
            ),
            FFRoute(
              name: 'featues_wifiqrcode',
              path: 'featuesWifiqrcode',
              builder: (context, params) => FeatuesWifiqrcodeWidget(),
            ),
            FFRoute(
              name: 'digitalqchatpage',
              path: 'digitalqchatpage',
              builder: (context, params) => DigitalqchatpageWidget(),
            ),
            FFRoute(
              name: 'workflowaichatpage',
              path: 'workflowaichatpage',
              builder: (context, params) => WorkflowaichatpageWidget(),
            ),
            FFRoute(
              name: 'wifiqrcodechatpage',
              path: 'wifiqrcodechatpage',
              builder: (context, params) => WifiqrcodechatpageWidget(),
            ),
            FFRoute(
              name: 'uxlivechatpage',
              path: 'uxlivechatpage',
              builder: (context, params) => UxlivechatpageWidget(),
            ),
            FFRoute(
              name: 'Scaleschatpage',
              path: 'scaleschatpage',
              builder: (context, params) => ScaleschatpageWidget(),
            ),
            FFRoute(
              name: 'samantachatpage',
              path: 'samantachatpage',
              builder: (context, params) => SamantachatpageWidget(),
            ),
            FFRoute(
              name: 'CXindexchatpage',
              path: 'cXindexchatpage',
              builder: (context, params) => CXindexchatpageWidget(),
            ),
            FFRoute(
              name: 'commonroomchatpage',
              path: 'commonroomchatpage',
              builder: (context, params) => CommonroomchatpageWidget(),
            ),
            FFRoute(
              name: 'Shimmer1',
              path: 'shimmer1',
              builder: (context, params) => Shimmer1Widget(),
            ),
            FFRoute(
              name: 'ShimerList',
              path: 'shimerList',
              builder: (context, params) => ShimerListWidget(),
            ),
            FFRoute(
              name: 'LoginComponent',
              path: 'loginComponent',
              builder: (context, params) => LoginComponentWidget(),
            ),
            FFRoute(
              name: 'Signup',
              path: 'signup',
              builder: (context, params) => SignupWidget(),
            ),
            FFRoute(
              name: 'Chat',
              path: 'chat',
              builder: (context, params) => ChatWidget(
                product: params.getParam('product', ParamType.String),
                portfolio: params.getParam('portfolio', ParamType.String),
                roompk: params.getParam('roompk', ParamType.int),
                sessionID: params.getParam('sessionID', ParamType.String),
                messages: params.getParam('messages', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'agentterms',
              path: 'agentterms',
              builder: (context, params) => AgenttermsWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'Home',
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'FAQpages',
              path: 'fAQpages',
              builder: (context, params) => FAQpagesWidget(),
            ),
            FFRoute(
              name: 'ChatLoggedin',
              path: 'chatLoggedin',
              builder: (context, params) => ChatLoggedinWidget(
                product: params.getParam('product', ParamType.String),
                portfolio: params.getParam('portfolio', ParamType.String),
                roompk: params.getParam('roompk', ParamType.String),
                sessionID: params.getParam('sessionID', ParamType.String),
                messages: params.getParam('messages', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'ChatOpenRoom',
              path: 'chatOpenRoom',
              builder: (context, params) => ChatOpenRoomWidget(
                product: params.getParam('product', ParamType.String),
                portfolio: params.getParam('portfolio', ParamType.String),
                roompk: params.getParam('roompk', ParamType.String),
                sessionID: params.getParam('sessionID', ParamType.String),
                messages: params.getParam('messages', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'chatV2',
              path: 'chatV2',
              builder: (context, params) => ChatV2Widget(
                product: params.getParam('product', ParamType.String),
                portfolio: params.getParam('portfolio', ParamType.String),
                roompk: params.getParam('roompk', ParamType.int),
                sessionID: params.getParam('sessionID', ParamType.String),
                messages: params.getParam('messages', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'showclient',
              path: 'showclient',
              builder: (context, params) => ShowclientWidget(),
            ),
            FFRoute(
              name: 'showreferrals',
              path: 'showreferrals',
              builder: (context, params) => ShowreferralsWidget(
                email: params.getParam('email', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'SignupCopy',
              path: 'signupCopy',
              builder: (context, params) => SignupCopyWidget(),
            ),
            FFRoute(
              name: 'admin_panal',
              path: 'admin_panal',
              builder: (context, params) => AdminPanalWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
