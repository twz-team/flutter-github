import 'package:flutter/cupertino.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';

final navigatorKey = new GlobalKey<NavigatorState>();

void navigationMiddleware(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) {
  next(action);
  if (action is AppNavigateAction) {
    final cupertinoPageRoute = CupertinoPageRoute(builder: (context) {
      return action.page;
    });
    switch (action.type) {
      case 'replace':
        navigatorKey.currentState.pushReplacement(cupertinoPageRoute);
        break;
      default:
        navigatorKey.currentState.push(cupertinoPageRoute);
        break;
    }
  }
}
