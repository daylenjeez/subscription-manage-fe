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
    this.borderRadius = 14,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 12),
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

class ServiceTagList extends StatelessWidget {
  final List<String> tags;
  final double spacing;
  final EdgeInsetsGeometry? padding;
  final Function(String tag)? onTagSelected;

  const ServiceTagList({
    Key? key,
    required this.tags,
    this.spacing = 10,
    this.padding,
    this.onTagSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28, // ServiceTag 的高度
      padding: EdgeInsets.only(left: 16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal, // 设置为横向滚动
        itemCount: tags.length,
        // 设置标签之间的间距
        separatorBuilder: (context, index) => SizedBox(width: spacing),
        itemBuilder: (context, index) {
          return ServiceTag(
            child: Text(tags[index]),
          );
        },
      ),
    );
  }
}
