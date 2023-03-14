import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/modules/log/models/log.dart';
import 'package:forge/modules/admin/server/modules/log/router/log_arguments.dart';

class LogRepository {
  Future fetchOne({required LogDetailArguments arguments}) async {
    try {
      final response = await ApiService()
          .dio
          .get('/servers/${arguments.serverId}/logs?file=${arguments.file}');
      final log = response.data;
      return Log.fromJson(log);
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
