import 'package:flutter_app/src/data/model/article.dart';

abstract class QiitaRepository {
  Future<List<Article>> fetchArticles();
}
