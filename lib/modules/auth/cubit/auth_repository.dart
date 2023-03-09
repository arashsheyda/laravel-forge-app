import 'package:dio/dio.dart';
import 'package:forge/modules/auth/models/user.dart';
import 'package:forge/core/services/api_service.dart';

class AuthRepository {
  Future fetchUser({required String token}) async {
    try {
      final response = await ApiService().dio.get(
            '/user',
            options: Options(
              headers: {'authorization': 'Bearer $token'},
            ),
          );
      final user = response.data['user'];
      if (user != null) {
        ApiService.token = token;
      }
      return User.fromJson(user);
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      rethrow;
    }
  }
}
