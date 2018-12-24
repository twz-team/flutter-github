import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioWrapper {
  Dio dio;
  String url;

  static final DioWrapper _dioWrapper = DioWrapper._internal();

  factory DioWrapper() => _dioWrapper;

  DioWrapper._internal({Options options}) {
    if (dio == null) {
      var _options = (options ?? dio?.options ?? Options());
      dio = Dio(_options);
      dio.interceptor.request.onSend = _onSend;
      dio.interceptor.response.onSuccess = _onSuccess;
    }
  }

  void setOptions(Options options) {
    var _options = this.dio.options;
    this.dio.options = _options.merge(
      headers: options.headers,
    );
  }

  static Dio getInstance() {
    return _dioWrapper.dio;
  }

  _onSend(Options options) async {
    url = options.path;
    print('[${options.method}]] $url');
    final sharePreferences = await SharedPreferences.getInstance();
    options = options.merge(
        headers: {HttpHeaders.authorizationHeader: 'token ${sharePreferences.getString('token')}'});
    return options;
  }

  _onSuccess(Response response) {
    print('[${response.statusCode}] $url');
    return response;
  }
}
