import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';

class DeploymentRepository {
  Future fetchScript({required SiteDetailArguments arguments}) async {
    try {
      final response = await ApiService().dio.get(
          '/servers/${arguments.serverId}/sites/${arguments.siteId}/deployment/script');
      final script = response.data as String;
      return script;
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
