import 'package:meta/meta.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/stores/login/login_state.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

// state 值不能突变
@immutable
class AppState {
  final Api appApi;
  final User appUser;
  final bool isAuth;
  final String token;
  final SharedPreferences sharedPreferences;

  final LoginState loginState;

  AppState({
    Api appApi,
    User appUser,
    this.isAuth,
    this.token,
    this.sharedPreferences,
    this.loginState,
  })  : this.appApi = appApi ?? Api(),
        this.appUser = appUser ?? User();

  static Store<AppState> of(BuildContext context) => StoreProvider.of<AppState>(context);
}
