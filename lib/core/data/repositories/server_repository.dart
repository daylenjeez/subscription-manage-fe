import 'package:dio/dio.dart';
import 'package:subscription_app/core/data/entities/service.dart';
import 'package:subscription_app/core/network/dio_client.dart';

class ServerRepository {
  final _dio = DioClient.dio;

  Future<List<ServiceTree>> getServiceTree() async {
    try {
      final response = await _dio.get('/services/tree');
      return response.data.map((e) => ServiceTree.fromJson(e)).toList();
    } on DioException catch (e) {
      // 处理错误
      print('获取服务树失败: ${e.message}');
      return [];
    }
  }
}
