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
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF1E2936),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(
                fontSize: 14,
                color: Color(0xFF1E2936),
                fontWeight: FontWeight.bold),
            hintText: '请输入名称',
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xFF929CA5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xFFDCDCDC),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Icon',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
            height: 48,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
                    color: Color(0xFF929CA5),
                  ),
                ),
                IntrinsicWidth(
                  child: MaterialButton(
                    elevation: 0,
                    hoverElevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    color: Colors.white,
                    onPressed: () {},
                    // padding: EdgeInsets.symmetric(horizontal: 8),
                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0xFFE2E3E4)),
                    ),
                    child: Text(
                      '选择',
                      style: TextStyle(
                          color: Color(0xFF1E2936),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
