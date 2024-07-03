import 'package:flutter/material.dart';
import 'package:flutter_app/src/ui/route/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  MyApp({
    super.key,
  });

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ja'), Locale('en')],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle, // このタイトルはiOSでは使用されない
    );
    // TODO: Themeを使う？
  }
}
