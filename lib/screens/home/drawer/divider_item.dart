import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';

class DividerItem extends StatelessWidget {
  const DividerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Divider(
      color: AppColors.whiteColor,
      thickness: 2,
      indent: width*0.04,
      endIndent: width*0.04,

    );
  }
}
