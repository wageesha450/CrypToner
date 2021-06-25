import 'package:flutter/material.dart';
import 'package:freshproject/news/components/customListTile.dart';
import 'package:freshproject/news/model/article_model.dart';
import 'package:freshproject/news/services/api_service.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRYPTO NEWS", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo[900]
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) => 
              customListTile(articles[index], context),
              
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
