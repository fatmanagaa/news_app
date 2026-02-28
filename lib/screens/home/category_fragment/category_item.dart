import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/model/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  int index;

  CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: (index % 2 == 0)
          ? Alignment.bottomRight
          : Alignment.bottomLeft,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: Image.asset(category.image),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(84),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: height * 0.02,
          ),
          padding: EdgeInsetsDirectional.only(
            start: width * 0.02,
            end: width * 0.02,
          ),
          child: Row(
            textDirection: (index % 2 == 0)
                ? TextDirection.ltr
                : TextDirection.rtl,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'View All',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  (index % 2 == 0)
                      ? Icons.arrow_forward_ios_outlined
                      : Icons.arrow_back_ios,
                  color: Theme.of(context).splashColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
