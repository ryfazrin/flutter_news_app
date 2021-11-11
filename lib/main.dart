import 'package:flutter/material.dart';
import 'package:flutter_news_app/article.dart';
import 'package:flutter_news_app/article_web_view.dart';
import 'package:flutter_news_app/detail_page.dart';
import 'package:flutter_news_app/list_page.dart';
import 'package:flutter_news_app/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Pallete.kToDark,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: myTextTheme.apply(bodyColor: Colors.black),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            textStyle: TextStyle(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
        ),
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
