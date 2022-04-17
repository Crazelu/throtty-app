import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:throtty/presentation/routes/routes.dart';
import 'package:throtty/presentation/views/auth/sign_up_view.dart';
import 'package:throtty/presentation/views/views.dart';

class RouteGenerator {
  ///Generates routes, extracts and passes navigation arguments.
  static Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreenViewRoute:
        return _getPageRoute(const SplashView());
      case Routes.onboardingViewRoute:
        return _getPageRoute(const OnboardingView());
      case Routes.signupViewRoute:
        return _getPageRoute(const SignUpView());

      default:
        return _getPageRoute(_errorPage());
    }
  }

  //Wraps widget with a CupertinoPageRoute and adds route settings
  static CupertinoPageRoute<Object> _getPageRoute(
    Widget child, [
    String? routeName,
    dynamic args,
  ]) =>
      CupertinoPageRoute(
        builder: (context) => child,
        settings: RouteSettings(
          name: routeName,
          arguments: args,
        ),
      );

  ///Error page shown when app attempts navigating to an unknown route
  static Widget _errorPage({String message = "Error! Page not found"}) =>
      Scaffold(
        appBar: AppBar(
            title: const Text(
          'Page not found',
          style: TextStyle(color: Colors.red),
        )),
        body: Center(
          child: Text(
            message,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      );
}
