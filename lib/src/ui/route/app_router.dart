import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/src/data/model/article.dart';
import 'package:flutter_app/src/ui/home/home_page.dart';
import 'package:flutter_app/src/ui/article/article_page.dart';
import 'package:flutter/foundation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page, initial: true),
        AutoRoute(path: '/article', page: ArticleRoute.page),
      ];
}
