import 'package:flutter/material.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:mz_github/config/dic.dart';
import 'package:mz_github/main_app.dart';
import 'package:mz_github/stores/app_reducers.dart';
import 'package:mz_github/config/dio.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:mz_github/stores/plugins.dart';

class MainInitOption {
  SharedPreferences sharedPreferences;
  MainInitOption({this.sharedPreferences});
}

Future<MainInitOption> mainInit() async {
  DioWrapper();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var deviceId = sharedPreferences.getString(Dic.deviceId);
  var token = sharedPreferences.getString('token');
  // todo: 调试状态
  // sharedPreferences.remove('token');
  if (deviceId == null) {
    final uuid = Uuid();
    deviceId = uuid.v1();
    sharedPreferences.setString(Dic.deviceId, deviceId);
    print('[init] device_id: $deviceId');
  } else {
    print('[init] old device_id: $deviceId');
    print('[init] old token: $token');
  }
  return MainInitOption(sharedPreferences: sharedPreferences);
}

void main() async {
  final initInfo = await mainInit();
  var store = Store<AppState>(
    appReducer,
    initialState: AppState(
      sharedPreferences: initInfo.sharedPreferences,
      token: initInfo.sharedPreferences.getString('token'),
    ),
    middleware: [thunkMiddleware, navigationMiddleware],
  );
  runApp(new GithubApp(
    store: store,
    navigateKey: navigatorKey,
  ));
}
