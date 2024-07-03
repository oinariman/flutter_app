import 'package:flutter_app/src/data/model/article.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_app/src/data/repository/qiita_repository.dart';
import 'package:flutter_app/src/data/repository/qiita_repository_impl.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  late final QiitaRepository _repository =
      ref.read(qiitaRepositoryImplProvider);

  Future<List<Article>> _fetchArticles() async {
    return _repository.fetchArticles();
  }

  @override
  Future<List<Article>> build() async {
    return _fetchArticles();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => _fetchArticles());
  }
}
