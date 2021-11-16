import 'package:flutter/material.dart';
import 'package:flutter_news_app/common/navigation.dart';
import 'package:flutter_news_app/data/model/article.dart';
import 'package:flutter_news_app/ui/article_web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: Image.network(article.urlToImage!),
              child: Image.network(article.urlToImage!),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.description!,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Divider(color: Colors.grey),
                  Text(
                    article.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Text('Date: ${article.publishedAt}'),
                  SizedBox(height: 10),
                  Text('Author: ${article.author}'),
                  Divider(color: Colors.grey),
                  Text(
                    article.content ?? "",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigation.intentWithData(
                          ArticleWebView.routeName, article.url);
                    },
                    child: Text('Read More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
