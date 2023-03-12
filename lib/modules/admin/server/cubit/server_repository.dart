import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/models/server.dart';

class ServerRepository {
  Future fetchAll() async {
    try {
      final response = await ApiService().dio.get('/servers');
      final servers = response.data['servers'] as List;
      return servers.map((e) => Server.fromJson(e)).toList();
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }

  Future fetchOne({required int serverId}) async {
    try {
      final response = await ApiService().dio.get('/servers/$serverId');
      final servers = response.data['server'];
      return Server.fromJson(servers);
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
