import 'package:mz_github/beans/organization.dart';
import 'package:mz_github/beans/repository.dart';
import 'package:mz_github/config/api.dart';
import 'package:mz_github/config/dio.dart';

final dio = DioWrapper.getInstance();

class MyApi {
  Future<List<Organization>> getOrgList() async {
    final resposne = await dio.get('${MZApi.baseUrl}/user/orgs');
    return (resposne.data as List).map((item) => Organization.fromJson(item)).toList();
  }

  Future<List<Repository>> getRepositoryList() async {
    final response = await dio.get('${MZApi.baseUrl}/user/repos');
    return (response.data as List).map((item) => Repository.fromJson(item)).toList();
  }
}
