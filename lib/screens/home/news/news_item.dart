import 'package:flutter/material.dart';
import 'package:news_app/core/extensions/context_extensions.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width=context.width;
    final height=context.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color:  Theme.of(context).splashColor,
          width: 2
        ),

      ),
    );
  }
}
