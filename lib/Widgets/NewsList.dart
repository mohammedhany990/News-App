import 'package:flutter/material.dart';
import 'package:news_app2/Models/Models.dart';
import 'package:news_app2/Widgets/newstile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});
  final List<NewsModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            art: articles[index],
          );
        },
      ),
    );
  }
}
