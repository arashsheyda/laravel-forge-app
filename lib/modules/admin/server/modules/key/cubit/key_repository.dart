import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/modules/key/models/key.dart';

class KeyRepository {
  Future fetchAll({required int serverId}) async {
    try {
      final response =
          await ApiService().dio.get('/servers/$serverId/databases');
      final keys = response.data['keys'] as List;
      return keys.map((e) => Key.fromJson(e)).toList();
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
