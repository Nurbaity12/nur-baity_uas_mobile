import 'package:flutter/material.dart';
import 'package:news_appbaity/componen/customListTile.dart';
import 'package:news_appbaity/model/articlesModel.dart';
import 'package:news_appbaity/service/apiService_Otomotif.dart';

class AutomotivePage extends StatefulWidget {
  @override
  _AutomotivePage createState() => _AutomotivePage();
}

class _AutomotivePage extends State<AutomotivePage> {
  ApiService2 client = ApiService2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BERITA OTOMOTIF"),
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
