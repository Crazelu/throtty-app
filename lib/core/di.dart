import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:throtty/core/data/local/__local.dart';
import 'package:throtty/core/domain/__domains.dart';
import 'package:throtty/handlers/handlers.dart';

GetIt locator = GetIt.instance;

///Registers dependencies
Future<void> setupLocator({String baseApi = ''}) async {
  locator.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  await locator.isReady<SharedPreferences>();

  //Local storage
  locator.registerLazySingleton<SecureStorage>(
    () => SecureStorageImpl(),
  );

  locator.registerLazySingleton<LocalCache>(
    () => LocalCacheImpl(
      sharedPreferences: locator(),
      storage: locator(),
    ),
  );

  //DOMAINS
  locator.registerLazySingleton<AppDefaultsDomain>(
    () => AppDefaultsDomainImpl(
      locator(),
    ),
  );

  //Handlers
  locator
      .registerLazySingleton<NavigationHandler>(() => NavigationHandlerImpl());

  locator.registerLazySingleton<DialogHandler>(() => DialogHandlerImpl());
}
