import 'package:flutter/material.dart';
import 'package:subscription_app/features/subscription/widgets/service_select_sheet/service_list_sheet.dart';
import 'package:subscription_app/shared/widgets/bottom_sheet.dart';

// 显示底部弹窗
void _showServiceSelectSheet(
    BuildContext context, Function(int?) onServerSelected) {
  final selectedIdNotifier = ValueNotifier<int?>(null);

  AppBottomSheet.show(
    context: context,
    title: '选择服务',
    child: ServiceSelectSheet(
      selectedIdNotifier: selectedIdNotifier, // 传递 ValueNotifier
      onServerSelected: (id) {
        selectedIdNotifier.value = id;

        if (id == -1) {
          //自定义服务
          onServerSelected(selectedIdNotifier.value);
          selectedIdNotifier.dispose();
          AppBottomSheet.confirm(context);
        }
      },
    ),
    onCancel: () {
      selectedIdNotifier.dispose();
    },
    onConfirm: (value) {
      onServerSelected(selectedIdNotifier.value);
      selectedIdNotifier.dispose();
    },
  );
}

class ServerSelectField extends StatelessWidget {
  final Function(int?) onServerSelected;
  final int? serverId;
  const ServerSelectField(
      {super.key, required this.onServerSelected, this.serverId});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '服务选择',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        InkWell(
          onTap: () {
            _showServiceSelectSheet(context, onServerSelected);
          },
          child: Container(
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
            child: Row(
              children: [
                // 左侧文本
                Expanded(
                  child: Text(
                    '请选择服务',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ),
                // 右侧新增按钮
                IntrinsicWidth(
                  child: MaterialButton(
                    elevation: 0,
                    hoverElevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    color: Theme.of(context).buttonTheme.colorScheme?.primary,
                    onPressed: () {
                      _showServiceSelectSheet(context, onServerSelected);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '选择',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
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
