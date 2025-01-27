import 'package:dio/dio.dart';

// dio基础配置
class DioClient {
  static Dio? _dio;

  static Dio get dio {
    _dio ??= Dio(BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
      headers: {'Content-Type': 'application/json'},
    ))
      ..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));

    return _dio!;
  }
}
