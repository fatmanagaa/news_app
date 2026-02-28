import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_assets.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/screens/home/drawer/divider_item.dart';
import 'package:news_app/screens/home/drawer/drawer_item.dart';
import 'package:news_app/screens/home/drawer/selected_item.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      spacing: height*0.02,
      children: [
        Container(
          height: height * 0.20,
          width: double.infinity,
          alignment: Alignment.center,
          color: AppColors.whiteColor,
          child: Text(
            'News App',
            style: AppStyles.medium24Black,
            textAlign: TextAlign.center,
          ),
        ),
        DrawerItem(iconName:AppAssets.homeIcon , text: 'Go To Home',),
        DividerItem(),
        DrawerItem(iconName:AppAssets.themeIcon , text: 'Theme',),
        SelectedItem(text: 'Dark', onPressed:(){
          //todo:make bottom sheet like in evently
        } ),
        DividerItem(),
        DrawerItem(iconName:AppAssets.languageIcon , text: 'Language',),
        SelectedItem(text: 'English', onPressed:(){
          //todo:make bottom sheet like in evently
        } )



      ],
    );
  }
}
