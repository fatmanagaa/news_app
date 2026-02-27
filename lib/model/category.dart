import 'package:flutter/cupertino.dart';
import 'package:news_app/core/utils/app_assets.dart';

class Category {
  String id;
  String title;
  String image;

  Category({required this.image, required this.title, required this.id});

  ///business entertainment general health science sports technology
  static List<Category> getCategoriesList(context, bool  isDarkMode) {
    return [
      Category(
        image: AppAssets.getCategoryImageGeneral(context),
        title: 'General',
        id: 'general',
      ),
      Category(
        image: AppAssets.getCategoryImageBusiness(context),
        title: 'Business',
        id: 'business',
      ),
      Category(
        image: AppAssets.getCategoryImageSport(context),
        title: ' Sports',
        id: ' sports',
      ),
      Category(
        image: AppAssets.getCategoryImageHealth(context),
        title: ' Health',
        id: ' health',
      ),
      Category(
        image: AppAssets.getCategoryImageEntertainment(context),
        title: 'Entertainment',
        id: 'entertainment',
      ),
      Category(
        image: AppAssets.getCategoryImageScience(context),
        title: 'Science',
        id: 'science',
      ),

      Category(
        image: AppAssets.getCategoryImageTech(context),
        title: 'Technology',
        id: 'technology',
      ),
    ];
  }
}
