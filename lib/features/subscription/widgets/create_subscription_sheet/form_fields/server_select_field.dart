import 'package:flutter/material.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_list.dart';

import '../../../../../shared/widgets/bottom_sheet.dart';

// 显示底部弹窗
// 显示底部弹窗
void _showServiceSelectSheet(BuildContext context) {
  AppBottomSheet.show(
    context: context,
    title: '选择服务',
    child: ServiceSelectSheet(),
    onCancel: () {
      print('取消');
    },
    onConfirm: (value) {
      print('确认');
    },
  );
}

class ServerSelectField extends StatelessWidget {
  const ServerSelectField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            '服务名称',
            style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
          ),
        ),
        InkWell(
          onTap: () {
            _showServiceSelectSheet(context);
          },
          child: Container(
            height: 44,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                // 左侧文本
                Expanded(
                  child: Text(
                    '请选择服务名称',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
                ),
                // 右侧新增按钮
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.add_circle_outline,
                    size: 20,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
