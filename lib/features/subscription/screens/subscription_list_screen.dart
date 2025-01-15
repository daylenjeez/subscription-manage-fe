// 类名使用 PascalCase
import 'package:flutter/material.dart';

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
      body: const Text('Subscription List'),
    );
  }
}
