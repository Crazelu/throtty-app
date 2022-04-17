import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/core/di.dart';
import 'package:throtty/core/domain/app_defaults_domain.dart';
import 'package:throtty/core/ui/base_view_model.dart';

final onboardingViewModelProvider =
    ChangeNotifierProvider<OnboardingViewModel>((ref) => OnboardingViewModel());

class OnboardingViewModel extends BaseViewModel {
  Future<void> completeOnboarding() async {
    locator<AppDefaultsDomain>().completeOnboarding();
  }
}
