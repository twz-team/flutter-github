import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:mz_github/config/dic.dart';
import 'package:mz_github/main_app.dart';

class MainInitOption {
  SharedPreferences sharedPreferences;
  MainInitOption({this.sharedPreferences});
}

Future<MainInitOption> mainInit() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var deviceId = sharedPreferences.getString(Dic.deviceId);
  if (deviceId == null) {
    final uuid = Uuid();
    deviceId = uuid.v1();
    sharedPreferences.setString(Dic.deviceId, deviceId);
    print('[init] device_id: $deviceId');
  } else {
    print('[init] old device_id: $deviceId');
  }
  return MainInitOption(sharedPreferences: sharedPreferences);
}

void main() async {
  final initInfo = await mainInit();
  runApp(new GithubApp(
    sharedPreferences: initInfo.sharedPreferences,
  ));
}
