import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mz_github/config/api.dart';

class CreateDio {
  Dio dio;
  String url;
  CreateDio({Options options, String token}) {
    this.dio = Dio();
    options = (options ?? Options()).merge(
      baseUrl: MZApi.baseUrl,
      headers: {HttpHeaders.authorizationHeader: token},
    );
    this.dio.options = options;
    this.dio.interceptor.request.onSend = _onSend;
    this.dio.interceptor.response.onSuccess = _onSuccess;
  }

  _onSend(Options options) {
    url = '${options.baseUrl + options.path}';
    print('[${options.method}]] $url');
    return options;
  }

  _onSuccess(Response response) {
    print('[${response.statusCode}] $url');
    return response;
  }
}
