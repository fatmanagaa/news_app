import 'package:flutter/material.dart';
import 'package:news_app/core/app_styles.dart';
import 'package:news_app/core/extensions/context_extensions.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/screens/home/category_fragment/category_item.dart';

class CategoryFragment extends StatelessWidget {
  List<Category> categoriesList = [];


  CategoryFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final height = context.height;
    categoriesList=Category.getCategoriesList(context,true);



    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        spacing: height*0.02,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning \n Here is Some News For You',
            style: AppStyles.medium24White,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder:(context, index) {
                return CategoryItem(category: categoriesList[index], index: index,);
              },
              separatorBuilder: (context, index) => SizedBox(),
              itemCount:  categoriesList.length,
            ),
          ),
        ],
      ),
    );
  }
}
