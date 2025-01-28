import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  // 标题
  final String title;
  // 取消按钮文本
  final String cancelText;
  // 确认按钮文本
  final String confirmText;
  // 内容区域
  final Widget? child;
  // 取消回调
  final VoidCallback? onCancel;
  // 确认回调
  final Function(dynamic)? onConfirm;

  const AppBottomSheet({
    Key? key,
    required this.title,
    this.cancelText = '取消',
    this.confirmText = '确定',
    this.child,
    this.onCancel,
    this.onConfirm,
  }) : super(key: key);

  // 显示底部弹窗的静态方法
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    String cancelText = '取消',
    String confirmText = '确定',
    Widget? child,
    VoidCallback? onCancel,
    Function(T?)? onConfirm,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) => AppBottomSheet(
        title: title,
        cancelText: cancelText,
        confirmText: confirmText,
        onCancel: onCancel,
        onConfirm: onConfirm as Function(dynamic)?,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 获取屏幕高度
    final screenHeight = MediaQuery.of(context).size.height;
    // 获取AppBar高度
    final appBarHeight = AppBar().preferredSize.height;
    // 计算可用高度
    final availableHeight = screenHeight - appBarHeight;

    return SizedBox(
      height: availableHeight,
      width: double.infinity,
      child: Column(
        children: [
          // 顶部导航栏
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 取消按钮
                TextButton(
                  onPressed: () {
                    onCancel?.call();
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(44, 44),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    cancelText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ),

                // 标题
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // 确认按钮
                TextButton(
                  onPressed: () {
                    onConfirm?.call('confirm');
                    Navigator.pop(context, 'confirm');
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(44, 44),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    confirmText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2C2C2C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 分割线

          // 内容区域
          if (child != null) Expanded(child: child!),
        ],
      ),
    );
  }
}
