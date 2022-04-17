import 'package:flutter/material.dart';
import 'package:throtty/app.dart';
import 'package:throtty/core/di.dart';
import 'package:throtty/utils/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.configure(showLogs: true);
  await setupLocator();
  runApp(const App());
}
