import 'package:flutter/material.dart';

class CustomFields extends StatelessWidget {
  final Function(String) onNameChanged;
  const CustomFields({super.key, required this.onNameChanged});

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
          onChanged: (value) {
            onNameChanged(value);
          },
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
              border: Border.all(color: Theme.of(context).dividerColor),
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
