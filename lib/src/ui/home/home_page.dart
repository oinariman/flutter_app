import 'package:flutter/material.dart';
import 'package:flutter_app/src/ui/home/home_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        appBar: AppBar(title: Text(l10n.homePageTitle)),
        body: RefreshIndicator(
            onRefresh: () => ref.refresh(homeViewModelProvider.future),
            child: homeViewModel.when(
                data: (articles) => ListView.separated(
                    itemCount: articles.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final article = articles[index];
                      return ListTile(
                          title: Text(article.title),
                          subtitle: Text(article.createdAt));
                    }),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => Center(child: Text(error.toString())))));
  }
}
