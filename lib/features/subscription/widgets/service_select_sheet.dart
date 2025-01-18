// lib/features/subscription/widgets/service_select_sheet.dart
import 'package:flutter/material.dart';

class ServiceSelectSheet extends StatelessWidget {
  const ServiceSelectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          // 搜索框
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: '搜索服务',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),

          // 服务列表
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                ListTile(
                  leading: Image.network(
                    'https://example.com/netflix.png',
                    width: 40,
                    height: 40,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.movie, color: Colors.grey),
                      );
                    },
                  ),
                  title: Text('Netflix'),
                  subtitle: Text('视频订阅'),
                  onTap: () {
                    Navigator.pop(context, {
                      'id': 'netflix',
                      'name': 'Netflix',
                      'icon': 'https://example.com/netflix.png',
                    });
                  },
                ),
                // 更多服务项...
              ],
            ),
          ),
        ],
      ),
    );
  }
}
