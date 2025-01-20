import 'package:flutter/material.dart';

class ServiceCategory extends StatelessWidget {
  const ServiceCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text('视频',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          // ListView.builder(
          //   itemBuilder: (context, index) {
          //     return Text('视频$index');
          //   },
          // ),
        ],
      ),
    );
  }
}

class ServiceCategoryList extends StatelessWidget {
  const ServiceCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ServiceCategory(),
        ],
      ),
    );
  }
}
