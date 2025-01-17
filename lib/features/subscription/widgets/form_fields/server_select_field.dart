import 'package:flutter/material.dart';

class ServerSelectField extends StatelessWidget {
  const ServerSelectField({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    ));
  }
}
