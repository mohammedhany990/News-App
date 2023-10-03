import 'package:flutter/material.dart';
import 'package:news_app2/Models/Models.dart';
import 'package:news_app2/Widgets/Category.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: card.imageTitle,
              );
            },
          ),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(card.imagePath),
          ),
        ),
        child: Center(
          child: Text(
            card.imageTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
