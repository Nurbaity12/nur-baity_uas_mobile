import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_appbaity/model/articlesModel.dart';

class ApiService2 {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'q': 'mobil indonesia',
      'apiKey': 'b4fbe39de67748539a15c542479221b6'
    };
    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
