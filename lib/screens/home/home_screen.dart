import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/screens/home/category_fragment/category_fragment.dart';
import 'package:news_app/screens/home/drawer/home_drawer.dart';

import 'category_details/category_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home', style: AppStyles.medium20White),
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: AppColors.blackColor,
          child: HomeDrawer()),
      body: CategoryFragment(),
    );
  }
}
