import 'package:flutter/material.dart';

class CustomFields extends StatelessWidget {
  const CustomFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '名称',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '请输入名称',
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Icon',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        Container(
            height: 48,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xFFE2E3E4)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '请选择Icon',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                IntrinsicWidth(
                  child: MaterialButton(
                    elevation: 0,
                    hoverElevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    color: Color(0xFFE2E3E4),
                    onPressed: () {},
                    // padding: EdgeInsets.symmetric(horizontal: 8),
                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '选择',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
