import 'package:dio/dio.dart';
import 'package:flutter_app/src/data/data_source/qiita_data_source.dart';
import 'package:flutter_app/src/data/model/article.dart';
import 'package:flutter_app/src/data/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qiita_repository_impl.g.dart';

@riverpod
class QiitaRepositoryImpl extends _$QiitaRepositoryImpl
    implements QiitaRepository {
  final _qiitaDataSource = QiitaDataSource(Dio());

  @override
  QiitaRepositoryImpl build() => this;

  @override
  Future<List<Article>> fetchArticles() async {
    return await _qiitaDataSource.fetchArticles();
  }
}
