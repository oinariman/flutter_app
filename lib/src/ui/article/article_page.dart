import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/src/data/model/article.dart';

@RoutePage()
class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(article.title),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(article.body)),
          ),
        ));
  }
}
