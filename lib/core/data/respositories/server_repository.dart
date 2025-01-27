import 'package:dio/dio.dart';
import 'package:subscription_app/core/data/entities/service.dart';
import 'package:subscription_app/core/network/dio_client.dart';

class ServerRepository {
  final _dio = DioClient.dio;

  Future<ServiceTree?> getServiceTree(String id) async {
    try {
      final response = await _dio.get('/services/tree');
      return ServiceTree.fromJson(response.data);
    } on DioException catch (e) {
      // 处理错误
      print('获取服务树失败: ${e.message}');
      return null;
    }
  }
}
