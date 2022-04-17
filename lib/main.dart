import 'package:flutter/material.dart';
import 'package:throtty/app.dart';

import 'core/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  Future.delayed(const Duration(seconds: 2)).then((_) => runApp(const App()));
}
