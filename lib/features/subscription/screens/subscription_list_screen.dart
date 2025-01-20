import 'package:flutter/material.dart';
import '../../../shared/widgets/bottom_sheet.dart';
import '../widgets/create_subscription_sheet/form.dart';

// 显示底部弹窗
void _showBottomSheet(BuildContext context) {
  AppBottomSheet.show(
    context: context,
    title: '新建订阅',
    child: CreateSubscriptionForm(),
    onCancel: () {
      print('取消');
    },
    onConfirm: (value) {
      print('确认');
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
          onPressed: () => _showBottomSheet(context),
          child: Text('新建订阅'),
        ),
      ),
    );
  }
}
