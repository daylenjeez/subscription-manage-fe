import 'package:flutter/material.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_category_list.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_tags_list.dart';

class ServiceSelectSheet extends StatelessWidget {
  const ServiceSelectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAF9F7),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Stack(
        // 使用 Stack 替换最外层的 Column
        children: [
          // 滚动内容放在底层
          Column(
            children: [
              SizedBox(
                height: 104,
              ),
              // 为header预留空间
              // 服务列表
              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: ServiceCategoryList(),
                  ),
                ),
              ),
            ],
          ),
          // Header放在顶层
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              // 搜索框
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                spacing: 12,
                children: [
                  Container(
                    height: 36,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '搜索服务',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF627381),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 14,
                            color: Color(0xFF627381),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ServiceTagList(
                    tags: [
                      '视频',
                      '游戏',
                      '音乐',
                      '工具',
                      '教育',
                      '社交',
                      '生活',
                      '其他',
                    ],
                    onTagSelected: (tag) {
                      print(tag);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
