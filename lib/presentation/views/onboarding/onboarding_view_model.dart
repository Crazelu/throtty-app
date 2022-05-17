import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/core/di.dart';
import 'package:throtty/core/domain/stores/app_defaults_store.dart';
import 'package:throtty/core/ui/base_view_model.dart';
import 'package:throtty/presentation/routes/routes.dart';

final onboardingViewModelProvider =
    ChangeNotifierProvider<OnboardingViewModel>((ref) => OnboardingViewModel());

class OnboardingViewModel extends BaseViewModel {
  void completeOnboarding() {
    locator<AppDefaultsStore>().completeOnboarding();
    navigationHandler.pushReplacementNamed(Routes.signupViewRoute);
  }
}
