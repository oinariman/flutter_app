import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'home_view_model.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.watch(homeViewModelProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: [
          homeViewModel.when(
              data: (data) => Text(data),
              loading: () => const CircularProgressIndicator(),
              error: (error, _) => Text('Error: $error')),
          OutlinedButton(
              onPressed: () =>
                  ref.read(homeViewModelProvider.notifier).refresh(),
              child: const Text('Refresh')),
        ]))));
  }
}
