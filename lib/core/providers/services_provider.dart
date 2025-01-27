import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subscription_app/core/data/entities/service.dart';
import '../data/repositories/server_repository.dart';

final apiProvider = Provider((ref) => ServerRepository());

// 服务列表的 provider
final servicesProvider = FutureProvider<List<ServiceTree>>((ref) async {
  // 通过 ref.watch 获取 apiProvider 的实例
  final api = ref.watch(apiProvider);
  return api.getServiceTree();
});
