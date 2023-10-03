import 'package:flutter/material.dart';
import 'package:news_app2/Widgets/NewsListBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        '$category',
        style: const TextStyle(
          fontSize: 26,
        ),
      )),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
