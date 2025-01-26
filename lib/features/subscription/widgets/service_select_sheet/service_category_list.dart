import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard(
      {super.key,
      required this.label,
      required this.logo,
      required this.id,
      required this.onServerSelected});
  final String label;
  final String logo;
  final int id;
  final Function(int) onServerSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onServerSelected(id);
      },
      child: Container(
        width: 158.5,
        height: 140,
        padding: EdgeInsets.only(left: 8, right: 8, top: 25, bottom: 8),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              width: 64,
              height: 64,
              margin: EdgeInsets.only(bottom: 8),
              child: Image.asset(
                logo,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              label,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCategory extends StatelessWidget {
  const ServiceCategory(
      {super.key, required this.title, required this.onServerSelected});
  final String title;
  final Function(int) onServerSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(
            width: 329,
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ServiceCard(
                    id: 1,
                    label: 'YouTuber',
                    logo: 'assets/images/logos/youtuber.png',
                    onServerSelected: onServerSelected),
                ServiceCard(
                    id: 2,
                    label: 'Youtube Premium',
                    logo: 'assets/images/logos/youtuber.png',
                    onServerSelected: onServerSelected),
                ServiceCard(
                    id: 3,
                    label: 'YouTuber',
                    logo: 'assets/images/logos/youtuber.png',
                    onServerSelected: onServerSelected),
                // ServiceCard(
                //     label: 'YouTuber',
                //     logo: 'assets/images/logos/youtuber.png'),
              ],
            ),
          )

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
  const ServiceCategoryList({super.key, required this.onServerSelected});
  final Function(int) onServerSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        spacing: 12,
        children: [
          ServiceCategory(title: '视频', onServerSelected: onServerSelected),
          ServiceCategory(title: '游戏', onServerSelected: onServerSelected),
        ],
      ),
    );
  }
}
