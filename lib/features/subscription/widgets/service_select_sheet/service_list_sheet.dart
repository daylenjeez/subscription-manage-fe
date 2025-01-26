import 'package:flutter/material.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_category_list.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_tags_list.dart';

import '../../../../entities/service.dart';

class ServiceSelectSheet extends StatefulWidget {
  final Function(int) onServerSelected;
  final ValueNotifier<int?> selectedIdNotifier;

  const ServiceSelectSheet({
    super.key,
    required this.onServerSelected,
    required this.selectedIdNotifier,
  });

  @override
  State<ServiceSelectSheet> createState() => _ServiceSelectSheetState();
}

class _ServiceSelectSheetState extends State<ServiceSelectSheet> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int?>(
        valueListenable: widget.selectedIdNotifier,
        builder: (context, value, child) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFFFAF9F7),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Stack(
              children: [
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: ServiceCategoryList(
                            onServerSelected: widget.onServerSelected,
                            selectedIdNotifier: widget.selectedIdNotifier,
                          ),
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
                            ServiceTag(id: 1, name: '视频'),
                            ServiceTag(id: 2, name: '游戏'),
                            ServiceTag(id: 3, name: '音乐'),
                            ServiceTag(id: 4, name: '工具'),
                            ServiceTag(id: 5, name: '教育'),
                            ServiceTag(id: 6, name: '社交'),
                            ServiceTag(id: 7, name: '生活'),
                            ServiceTag(id: 8, name: '其他'),
                          ],
                          onTagSelected: (tag) {
                            print(tag.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
