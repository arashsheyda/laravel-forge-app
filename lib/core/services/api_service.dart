import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  static String? token;

  var dio = createDio();

  ApiService._internal();

  static final _singleton = ApiService._internal();

  factory ApiService() => _singleton;

  static Dio createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['API_URL']! + dotenv.env['API_PREFIX']!,
        sendTimeout: 10000,
        connectTimeout: 10000,
        receiveTimeout: 10000,
        contentType: 'application/json',
        responseType: ResponseType.json,
        headers: {},
      ),
    );

    if (token != null) {
      dio.options.headers['authorization'] = 'Bearer $token';
    }

    dio.interceptors.addAll({AppInterceptors(dio)});
    return dio;
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  //   super.onRequest(options, handler);
  // }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.data = response.data;
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        throw DioError(
          requestOptions: err.requestOptions,
          type: DioErrorType.connectTimeout,
          error: '408',
        );
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw DioError(requestOptions: err.requestOptions, error: '400');
          case 401:
            throw DioError(requestOptions: err.requestOptions, error: '401');
          case 403:
            throw DioError(requestOptions: err.requestOptions, error: '403');
          case 404:
            throw DioError(requestOptions: err.requestOptions, error: '404');
          case 500:
            throw DioError(requestOptions: err.requestOptions, error: '500');
          case 503:
            throw DioError(requestOptions: err.requestOptions, error: '503');
          case 504:
            throw DioError(requestOptions: err.requestOptions, error: '504');
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw DioError(requestOptions: err.requestOptions, error: 'error');
    }
    super.onError(err, handler);
  }
}
