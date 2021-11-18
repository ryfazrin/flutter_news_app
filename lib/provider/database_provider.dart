import 'package:flutter/material.dart';
import 'package:flutter_news_app/data/db/database_helper.dart';
import 'package:flutter_news_app/data/model/article.dart';
import 'package:flutter_news_app/provider/news_provider.dart';

class DatabaseProvider extends ChangeNotifier {
  final DatabaseHelper databaseHelper;

  DatabaseProvider({required this.databaseHelper});

  late ResultState _state;
  ResultState get state => _state;

  String _message = '';
  String get message => _message;

  List<Article> _bookmarks = [];
  List<Article> get bookmarks => _bookmarks;
}
