import 'package:mz_github/beans/api.dart';
import 'package:mz_github/beans/user.dart';
import 'package:mz_github/config/dio.dart';
import 'package:mz_github/config/api.dart';

final dio = DioWrapper.getInstance();

class GithubApi {
  Future<Api> getAppApi() async {
    final response = await dio.get(MZApi.baseUrl);
    return Api.fromJson(response.data);
  }

  Future<User> getAppUser() async {
    final response = await dio.get('${MZApi.baseUrl}/user');
    return User.fromJson(response.data);
  }
}
