import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:throtty/presentation/view-models/base_view_model.dart';
import 'package:throtty/utils/utils.dart';

final onboardingViewModelProvider =
    ChangeNotifierProvider<OnboardingViewModel>((ref) => OnboardingViewModel());

class OnboardingViewModel extends BaseViewModel {
  Future<void> completeOnboarding() async {
    localCache.saveToLocalCache(key: onboardingStatus, value: true);
  }
}
