import 'package:throtty/core/data/local/__local.dart';

abstract class AppDefaultsDomain {
  bool isOnboardingComplete();
  Future<void> completeOnboarding();
}

class AppDefaultsDomainImpl implements AppDefaultsDomain {
  final LocalCache cache;

  static const _onboardingStatusKey = "onboarding_status_key";

  AppDefaultsDomainImpl(this.cache);

  @override
  Future<void> completeOnboarding() async {
    cache.saveToLocalCache(key: _onboardingStatusKey, value: true);
  }

  @override
  bool isOnboardingComplete() {
    return cache.getFromLocalCache(_onboardingStatusKey) as bool? ?? false;
  }
}
