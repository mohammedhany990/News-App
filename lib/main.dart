import 'package:flutter/material.dart';
import 'package:news_app2/Widgets/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      checkerboardOffscreenLayers: false,
      home: HomePage(),
    );
  }
}
