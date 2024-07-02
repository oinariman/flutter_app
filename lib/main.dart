import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

//part 'main.g.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}
