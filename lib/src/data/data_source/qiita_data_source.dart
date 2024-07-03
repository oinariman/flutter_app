import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_app/src/data/model/article.dart';

part 'qiita_data_source.g.dart';

@RestApi(baseUrl: 'https://qiita.com')
abstract class QiitaDataSource {
  factory QiitaDataSource(Dio dio, {String baseUrl}) = _QiitaDataSource;

  @GET('/api/v2/items')
  Future<List<Article>> fetchArticles({
    @Query('page') int page = 1,
    @Query('per_page') int perPage = 20,
  });
}
