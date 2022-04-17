import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/core/di.dart';
import 'package:throtty/core/domain/app_defaults_domain.dart';
import 'package:throtty/presentation/routes/routes.dart';
import 'package:throtty/core/ui/base_view_model.dart';

final splashViewModelProvider =
    ChangeNotifierProvider((ref) => SplashViewModel());

class SplashViewModel extends BaseViewModel {
  bool get isOnboardingComplete =>
      locator<AppDefaultsDomain>().isOnboardingComplete();

  Future<void> navigate() async {
    if (isOnboardingComplete) {
      //check if user is logged in
      await navigationHandler.pushReplacementNamed(Routes.onboardingViewRoute);
    } else {
      navigationHandler.pushReplacementNamed(Routes.onboardingViewRoute);
    }
  }
}
