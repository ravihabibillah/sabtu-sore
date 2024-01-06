// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/article.dart';

class NewsListPage extends StatelessWidget {
  const NewsListPage({super.key});

  static const routeName = '/news-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          final listArticle = parseArticles(snapshot.data);

          return ListView.builder(
              itemCount: listArticle.length,
              itemBuilder: (context, index) {
                return _buildArticleItem(context, listArticle[index]);
              });
        },
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
      ),
    );
  }

  _buildArticleItem(BuildContext context, Article article) {
    return ListTile(
      contentPadding: EdgeInsets.all(16.0),
      leading: Image.network(
        article.urlToImage,
        width: 100,
        errorBuilder: (context, error, stackTrace) => SizedBox(
          width: 100,
          child: Icon(Icons.error),
        ),
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
    );
  }
}
