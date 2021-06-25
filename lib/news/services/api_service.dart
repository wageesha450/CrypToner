import 'dart:convert';

import 'package:freshproject/news/model/article_model.dart';
import "package:http/http.dart";

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=04e13c7aba414c02a3eec2685b7f8498";

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the Articel");
    }
  }
}
