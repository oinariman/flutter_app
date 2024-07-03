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
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: [
          OutlinedButton(
              onPressed: () =>
                  ref.read(homeViewModelProvider.notifier).refresh(),
              child: Text(l10n.commonRefresh)),
          homeViewModel.when(
              data: (data) {
                return Column(
                    children: data
                        .map((article) => ListTile(
                            title: Text(article.title),
                            subtitle: Text(article.updatedAt)))
                        .toList());
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, _) => Text('Error: $error')),
        ]))));
  }
}
