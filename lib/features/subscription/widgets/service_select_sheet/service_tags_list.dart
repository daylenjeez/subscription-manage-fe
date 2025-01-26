import 'package:flutter/material.dart';
import 'package:subscription_app/entities/service.dart';

class ServiceTagItem extends StatelessWidget {
  final ServiceTag tag;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  const ServiceTagItem({
    Key? key,
    required this.tag,
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
            color: Color(0xFF1C1C1C),
          ),
          child: Text(tag.name),
        ),
      ),
    );
  }
}

class ServiceTagList extends StatelessWidget {
  final List<ServiceTag> tags;
  final double spacing;
  final EdgeInsetsGeometry? padding;
  final Function(ServiceTag tag)? onTagSelected;

  const ServiceTagList({
    Key? key,
    required this.tags,
    this.spacing = 10,
    this.padding,
    this.onTagSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 28, // ServiceTag 的高度
        padding: EdgeInsets.only(left: 16),
        child: ListView.separated(
          scrollDirection: Axis.horizontal, // 设置为横向滚动
          itemCount: tags.length,
          // 设置标签之间的间距
          separatorBuilder: (context, index) => SizedBox(width: spacing),
          itemBuilder: (context, index) {
            return ServiceTagItem(
              tag: tags[index],
              key: ValueKey(tags[index].id),
              onTap: () => onTagSelected?.call(tags[index]),
            );
          },
        ),
      ),
      Positioned(
        right: 0,
        top: 0,
        bottom: 0,
        child: Container(
          width: 32, // 渐变区域宽度
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.white, // 完全不透明的白色
                Colors.white.withAlpha(0), // 完全透明
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
