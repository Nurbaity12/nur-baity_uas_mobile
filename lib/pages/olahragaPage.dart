import 'package:flutter/material.dart';
import 'package:news_appbaity/componen/customListTile.dart';
import 'package:news_appbaity/model/articlesModel.dart';
import 'package:news_appbaity/service/apiService_Olahraga.dart';

class SportPage extends StatefulWidget {
  @override
  _SportPage createState() => _SportPage();
}

class _SportPage extends State<SportPage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OLAHRAGA", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: FutureBuilder(
            future: client.getArticle(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article> articles = snapshot.data;
                return ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) =>
                        customListTile(articles[index], context));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
