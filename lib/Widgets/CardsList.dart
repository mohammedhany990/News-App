import 'package:flutter/material.dart';
import 'package:news_app2/Models/Models.dart';
import 'package:news_app2/Widgets/Card.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });
  final List<CardModel> cards = const [
    CardModel(imageTitle: 'General', imagePath: 'assets/general.avif'),
    CardModel(imageTitle: 'Business', imagePath: 'assets/business.avif'),
    CardModel(imageTitle: 'Technology', imagePath: 'assets/technology.jpeg'),
    CardModel(imageTitle: 'Sports', imagePath: 'assets/sports.avif'),
    CardModel(imageTitle: 'Science', imagePath: 'assets/science.avif'),
    CardModel(imageTitle: 'Health', imagePath: 'assets/health.avif'),
    CardModel(imageTitle: 'Entertainment', imagePath: 'assets/enter_.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return CardItem(
            card: cards[index],
          );
        },
      ),
    );
  }
}
