import 'package:flutter/material.dart';

class CustomFields extends StatelessWidget {
  const CustomFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: '服务名称',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Icon',
          ),
        ),
      ],
    );
  }
}
