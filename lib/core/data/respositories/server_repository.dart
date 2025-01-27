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

  // Future<List<User>> getUsers() async {
  //   try {
  //     final response = await _dio.get('/users');
  //     return (response.data as List)
  //         .map((json) => User.fromJson(json))
  //         .toList();
  //   } catch (e) {
  //     print('获取用户列表失败: $e');
  //     return [];
  //   }
  // }
}
