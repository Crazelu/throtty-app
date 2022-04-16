import 'package:flutter/material.dart';
import 'package:flutter_dialog_manager/flutter_dialog_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:throtty/handlers/handlers.dart';
import 'package:throtty/presentation/dialogs/dialog_generator.dart';
import 'package:throtty/presentation/routes/route_generator.dart';
import 'package:throtty/presentation/routes/routes.dart';
import 'package:throtty/utils/locator.dart';
import 'package:throtty/presentation/themes/light_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 630),
      builder: () => DialogManager(
        dialogKey: locator<DialogHandler>().dialogKey,
        navigatorKey: locator<NavigationHandler>().navigatorKey,
        onGenerateDialog: DialogGenerator.onGenerateDialog,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App',
          theme: lightTheme(context),
          navigatorKey: locator<NavigationHandler>().navigatorKey,
          onGenerateRoute: RouteGenerator.onGenerateRoute,
          initialRoute: Routes.splashScreenViewRoute,
          builder: (_, child) => ProviderScope(child: child!),
        ),
      ),
    );
  }
}
