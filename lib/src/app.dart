import 'package:flutter/material.dart';
import 'package:flutter_app/src/route/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';

/// The Widget that configures your application.
class MyApp extends ConsumerWidget {
  MyApp({
    super.key,
  });

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
//     return MaterialApp(
//       // Providing a restorationScopeId allows the Navigator built by the
//       // MaterialApp to restore the navigation stack when a user leaves and
//       // returns to the app after it has been killed while running in the
//       // background.
//       restorationScopeId: 'app',

//       // Provide the generated AppLocalizations to the MaterialApp. This
//       // allows descendant Widgets to display the correct translations
//       // depending on the user's locale.
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [Locale('ja'), Locale('en')],

//       // Use AppLocalizations to configure the correct application title
//       // depending on the user's locale.
//       //
//       // The appTitle is defined in .arb files found in the localization
//       // directory.
//       onGenerateTitle: (BuildContext context) =>
//           AppLocalizations.of(context)!.appTitle,

//       // Define a light and dark color theme. Then, read the user's
//       // preferred ThemeMode (light, dark, or system default) from the
//       // SettingsController to display the correct theme.
//       theme: ThemeData(),
//       darkTheme: ThemeData.dark(),
// //      themeMode: settingsController.themeMode,

//       // Define a function to handle named routes in order to support
//       // Flutter web url navigation and deep linking.
//       onGenerateRoute: (RouteSettings routeSettings) {
//         return MaterialPageRoute<void>(
//           settings: routeSettings,
//           builder: (BuildContext context) {
//             switch (routeSettings.name) {
//               case SampleItemDetailsView.routeName:
//                 return const SampleItemDetailsView();
//               case SampleItemListView.routeName:
//               default:
//                 return const SampleItemListView();
//             }
//           },
//         );
//       },
//     );
  }
}
