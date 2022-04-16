import 'package:flutter/material.dart';
import 'package:throtty/app.dart';
import 'package:throtty/utils/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const App());
}
