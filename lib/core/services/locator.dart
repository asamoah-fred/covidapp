import 'package:advanced_covid/core/services/get_allCountryStat_service.dart';
import 'package:advanced_covid/core/services/get_countryStats_service.dart';
import 'package:advanced_covid/core/services/http_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => HttpService());
  locator.registerLazySingleton(() => GetAllStatService());
  locator.registerLazySingleton(() => GetCountryStatService());
}
