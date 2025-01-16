import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  final Widget child;
  final double? height;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  BottomSheet({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.grey,
    this.height = 500,
    this.borderRadius,
  }) : super(key: key);

  @override
  //类型写控制器名字，返回是控制器的实例
  BottomSheetState createState() {
    return BottomSheetState();
  }
}

@override
class BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius ??
            BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
