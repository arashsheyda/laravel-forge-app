import 'package:dio/dio.dart';
import 'package:forge/core/services/api_service.dart';
import 'package:forge/modules/admin/server/modules/site/models/site.dart';

class SiteRepository {
  Future fetchAll({required int serverId}) async {
    try {
      final response = await ApiService().dio.get('/servers/$serverId/sites');
      final sites = response.data['sites'] as List;
      return sites.map((e) => Site.fromJson(e)).toList();
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
