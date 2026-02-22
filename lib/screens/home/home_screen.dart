import 'package:flutter/material.dart';
import 'package:news_app/core/app_styles.dart';


import 'category_details/category_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home',style: AppStyles.medium20White,),
        centerTitle: true,

      ),
      body: CategoryDetails(),
    );
  }
}
