import 'package:flutter/material.dart';

class ServiceTag extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  const ServiceTag({
    Key? key,
    required this.child,
    this.onTap,
    this.backgroundColor = const Color(0xFFF5F6F8),
    this.height = 28,
    this.borderRadius = 16,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF627381),
          ),
          child: child,
        ),
      ),
    );
  }
}
