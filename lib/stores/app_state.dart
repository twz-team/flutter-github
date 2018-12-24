import 'package:meta/meta.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/stores/module/my.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

// state 值不能突变
@immutable
class AppState {
  final Api appApi;
  final User appUser;
  final bool isAuth;
  final String token;
  final String loginMessage;
  final SharedPreferences sharedPreferences;
  final MyState myState;

  AppState({
    Api appApi,
    User appUser,
    this.isAuth,
    this.token,
    this.loginMessage = '授权',
    SharedPreferences sharedPreferences,
    MyState myState,
  })  : this.sharedPreferences = sharedPreferences,
        this.myState = myState ?? MyState.initial(),
        this.appApi = appApi ?? Api(),
        this.appUser = appUser ?? User();

  static Store<AppState> of(BuildContext context) => StoreProvider.of<AppState>(context);
}
