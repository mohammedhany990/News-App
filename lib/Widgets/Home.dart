import 'package:flutter/material.dart';
import 'package:news_app2/Widgets/CardsList.dart';
import 'package:news_app2/Widgets/NewsListBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            Text(
              'Clouds',
              style: TextStyle(
                fontSize: 26,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CardsList()),
          NewsListBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
