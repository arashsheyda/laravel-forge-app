import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/modules/database/models/database.dart';

class DatabaseRepository {
  Future fetchAll({required int serverId}) async {
    try {
      final response =
          await ApiService().dio.get('/servers/$serverId/databases');
      final databases = response.data['databases'] as List;
      return databases.map((e) => Database.fromJson(e)).toList();
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
