import 'package:flutter/widgets.dart';
import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/pages/basic.dart';
import 'package:mz_github/services/github_api.dart';
import 'package:mz_github/stores/app_state.dart';
import 'package:redux/redux.dart';

class AppNavigateAction {
  Widget page;
  String type;
  AppNavigateAction(this.page, {String action}) : this.type = action;
}

class AppSetLoginMessageAction {
  String loginMessage;
  AppSetLoginMessageAction(this.loginMessage);
}

class AppSetTokenAction {
  String token;
  AppSetTokenAction(this.token);
}

class AppAction {
  static final githubApi = GithubApi();
  static Future<void> initApiAction(Store<AppState> store) async {
    store.dispatch(AppSetLoginMessageAction('获取api...'));
    final api = await githubApi.getAppApi();
    store.dispatch(AppSetApiAction(api));
    store.dispatch(AppSetLoginMessageAction('获取用户信息...'));
    final user = await githubApi.getAppUser();
    store.dispatch(AppSetUserAction(user));
    store.dispatch(AppSetLoginMessageAction('欢迎您 ${user.name}, 马上准备就绪'));
    await Future.delayed(Duration(seconds: 2));
    store.dispatch(AppNavigateAction(BasicPage(), action: 'replace'));
  }
}

class AppSetApiAction {
  Api api;
  AppSetApiAction(this.api);
}

class AppInitAction {}

class AppSetUserAction {
  User user;
  AppSetUserAction(this.user);
}
