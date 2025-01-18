import 'package:flutter/material.dart';

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
          child: Container(
            height: 44,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text('请选择服务名称',
                    style: TextStyle(fontSize: 14, color: Color(0xFF9CA3AF))),
                OverflowBar(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
