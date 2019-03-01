import 'package:redux/redux.dart';
import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/stores/app_actions.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:mz_github/stores/models/my.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    loginMessage: loginMessageReducer(state.loginMessage, action),
    token: tokenReducer(state.token, action),
    appApi: appApiReducer(state.appApi, action),
    appUser: appUserReducer(state.appUser, action),
    sharedPreferences: state.sharedPreferences,
    myState: myReducer(state.myState, action),
  );
}

final loginMessageReducer = combineReducers<String>([
  TypedReducer<String, AppSetLoginMessageAction>(
      (String loginMessage, AppSetLoginMessageAction action) {
    return action.loginMessage;
  }),
]);

final tokenReducer = combineReducers<String>([
  TypedReducer<String, AppSetTokenAction>((token, AppSetTokenAction action) {
    print('已保存token: ${action.token}');
    return action.token;
  }),
]);

final appApiReducer = combineReducers<Api>([
  TypedReducer<Api, AppSetApiAction>((api, AppSetApiAction action) {
    return action.api;
  }),
]);

final appUserReducer = combineReducers<User>([
  TypedReducer<User, AppSetUserAction>((user, AppSetUserAction action) {
    return action.user;
  }),
]);
