// lib/features/subscription/widgets/service_select_sheet.dart
import 'package:flutter/material.dart';

class ServiceSelectSheet extends StatelessWidget {
  const ServiceSelectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          // 搜索框
          SizedBox(
            height: 36,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '搜索服务',
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0, // 调整这个值来实现文字居中
                    horizontal: 16,
                  ),
                ),
              ),
            ),
          ),

          // 服务列表
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
