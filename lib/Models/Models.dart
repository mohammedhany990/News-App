// ignore_for_file: public_member_api_docs, sort_constructors_first
class CardModel {
  final String imagePath;
  final String imageTitle;
  const CardModel({
    required this.imagePath,
    required this.imageTitle,
  });
}

class NewsModel {
  final String title;
  final String? img;
  final String? desc;
  const NewsModel({
    required this.title,
    required this.img,
    required this.desc,
  });
  factory NewsModel.fromjson(json) {
    return NewsModel(
      desc: json['description'],
      img: validateUrl(json['urlToImage']),
      title: json['title'],
    );
  }

  static String? validateUrl(String? url) {
    if (url == null || url.isEmpty) {
      return 'assets/no.jpg'; // Set a default image path or handle it as needed
    }
    // Check if the URL is valid, you can add more checks if needed
    if (Uri.tryParse(url) == null) {
      return 'assets/no.jpg'; // Set a default image path or handle it as needed
    }
    return url;
  }
}
