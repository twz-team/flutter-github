import 'dart:io';

import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/config/dio.dart';
import 'package:redux/redux.dart';
import 'package:dio/dio.dart';
import 'package:mz_github/stores/app_state.dart';

class SetTokenAction {
  final String token;
  SetTokenAction(this.token);
}

class InitAppAction {
  Api api;
  User user;
  InitAppAction(this.api, this.user);

  static requestInitApp(Store<AppState> store) async {
    final dio = CreateDio(token: store.state.token).dio;
    final apiResponse = await dio.get('/',
        options: Options(headers: {HttpHeaders.authorizationHeader: store.state.token}));
    final api = Api.fromJson(apiResponse.data);
    final userResponse = await dio.get('/user');
    final user = User.fromJson(userResponse.data);
    store.dispatch(InitAppAction(api, user));
  }
}
