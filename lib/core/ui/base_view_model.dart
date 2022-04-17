import 'package:flutter/material.dart';
import 'package:throtty/core/di.dart';
import 'package:throtty/handlers/handlers.dart';
import 'package:throtty/utils/utils.dart';

///Base view model with shared dependencies injected.
///All view models must extends this class.
class BaseViewModel extends ChangeNotifier {
  late NavigationHandler navigationHandler;
  late DialogHandler dialogHandler;

  BaseViewModel({
    NavigationHandler? navigationHandler,
    DialogHandler? dialogHandler,
  }) {
    this.navigationHandler = navigationHandler ?? locator();
    this.dialogHandler = dialogHandler ?? locator();
  }
  bool _loading = false;
  bool get loading => _loading;

  void toggleLoading(bool val) {
    _loading = val;
    notifyListeners();
  }

  void log(Object? e) {
    AppLogger.log(e);
  }
}
