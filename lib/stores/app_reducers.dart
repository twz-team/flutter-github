import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    token: setTokenReducer(state, action),
    appApi: initApiReducers(state, action),
    appUser: initUserReducers(state, action),
  );
}

final appApiReducer = combineReducers<Api>([]);

String setTokenReducer(AppState state, SetTokenAction action) {
  state.sharedPreferences.setString('token', action.token);
  return action.token;
}

Api initApiReducers(AppState state, InitAppAction action) {
  return action.api;
}

User initUserReducers(state, InitAppAction action) {
  return action.user;
}
