import 'package:throtty/core/domain/local/local_cache.dart';

abstract class AppDefaultsStore {
  bool isOnboardingComplete();
  Future<void> completeOnboarding();
}

class AppDefaultsStoreImpl implements AppDefaultsStore {
  final LocalCache cache;

  static const _onboardingStatusKey = "onboarding_status_key";

  AppDefaultsStoreImpl(this.cache);

  @override
  Future<void> completeOnboarding() async {
    cache.saveToLocalCache(key: _onboardingStatusKey, value: true);
  }

  @override
  bool isOnboardingComplete() {
    return cache.getFromLocalCache(_onboardingStatusKey) as bool? ?? false;
  }
}
