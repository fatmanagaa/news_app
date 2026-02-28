import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String iconName;
  final String text;

  const DrawerItem({super.key, required this.iconName, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.02),

      child: Row(
        spacing: width*0.04,
        children: [
      Image.asset(iconName),
          Text(text),
        ],
      ),
    );
  }
}
