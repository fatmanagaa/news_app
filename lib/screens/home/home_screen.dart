import 'package:flutter/material.dart';
import 'package:news_app/screens/home/widgets/category_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        centerTitle: true,

      ),
      body: CategoryDetails(),
    );
  }
}
