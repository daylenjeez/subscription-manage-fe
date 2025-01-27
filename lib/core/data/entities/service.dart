// lib/models/service.dart
enum ServiceType {
  preset, // 预设服务
  custom // 自定义服务
}

class Service {
  final int? id; // -1 表示自定义服务
  final String? name; // 服务名称
  final String? logo; // logo URL 或资源路径

  const Service({
    required this.id,
    required this.name,
    this.logo,
  });

  factory Service.empty() {
    return Service(id: null, name: null, logo: null);
  }

  // 创建自定义服务的工厂构造函数
  factory Service.custom({
    required String name,
    String? logo,
  }) {
    return Service(
      id: -1,
      name: name,
      logo: logo,
    );
  }

  // 创建预设服务的工厂构造函数
  factory Service.preset({
    required int id,
    required String name,
    String? logo,
  }) {
    if (id == -1) {
      throw ArgumentError('Preset service ID cannot be -1');
    }
    return Service(
      id: id,
      name: name,
      logo: logo,
    );
  }

  // 从 JSON 创建实例
  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
    );
  }

// copyWith 方法用于更新表单数据
  Service copyWith({
    int? id,
    String? name,
    String? logo,
    ServiceType? type,
  }) {
    return Service(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
    );
  }

  // 转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'logo': logo,
    };
  }

  // 判断是否为自定义服务
  bool get isCustom => id == -1;

  // 判断是否为预设服务
  bool get isPreset => id != -1;

  // 验证自定义服务是否有效
  bool isValid() {
    return name != null && name!.isNotEmpty && logo != null;
  }

  @override
  String toString() {
    return 'Service(id: $id, name: $name)';
  }
}

class ServiceTag {
  final int id;
  final String name;

  const ServiceTag({
    required this.id,
    required this.name,
  });
}

/// 服务树，分类下的服务
class ServiceTree {
  final int id;
  final String name;
  final List<Service> services;

  const ServiceTree({
    required this.id,
    required this.name,
    required this.services,
  });

  factory ServiceTree.fromJson(Map<String, dynamic> json) {
    return ServiceTree(
      id: json['id'],
      name: json['name'],
      services: json['services'],
    );
  }
}
