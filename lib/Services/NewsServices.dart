// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:news_app2/Models/Models.dart';

class NewsServices {
  final Dio dio = Dio();
  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=25b695db9c30458ab62ad31c99c2d6dc&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articlesList = [];
      for (var article in articles) {
        // NewsModel art = NewsModel(
        //   desc: article['description'],
        //   img: article['urlToImage'],
        //   title: article['title'],
        // );
        NewsModel art = NewsModel.fromjson(article);
        articlesList.add(art);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
