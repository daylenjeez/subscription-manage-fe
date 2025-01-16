// 类名使用 PascalCase
import 'package:flutter/material.dart';

// 显示底部弹窗的方法
void showBasicBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      // 获取屏幕高度
      final screenHeight = MediaQuery.of(context).size.height;
      // 获取AppBar高度
      final appBarHeight = AppBar().preferredSize.height;

      // 计算实际可用高度（屏幕高度 - 状态栏 - AppBar）
      final availableHeight = screenHeight - appBarHeight;
      return Container(
        height: availableHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 左侧取消按钮
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '取消',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),

                  // 中间标题
                  Text(
                    '选择选项',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // 右侧确定按钮
                  TextButton(
                    onPressed: () {
                      // 处理确定操作
                      Navigator.pop(context, 'confirm');
                    },
                    child: Text(
                      '确定',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1, color: Colors.grey[300]),
          ],
        ),
      );
    },
  );
}

class SubscriptionListScreen extends StatelessWidget {
  const SubscriptionListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Subscriptions'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showBasicBottomSheet(context),
          child: Text('显示底部弹窗'),
        ),
      ),
    );
  }
}
