import 'package:advanced_covid/core/models/country_stat_model.dart';
import 'package:advanced_covid/core/services/get_countryStats_service.dart';
import 'package:advanced_covid/core/services/locator.dart';
import 'package:flutter/widgets.dart';

class CountryStatVM extends ChangeNotifier {
  GetCountryStatService getCountryStatService =
      locator<GetCountryStatService>();
  CountryStatModel countryStat;
  Future<CountryStatModel> ongetcountrystat(String country) async {
    try {
      countryStat = await getCountryStatService.getCountryStat(country);
      notifyListeners();
      print(countryStat);
      return (countryStat);
    } catch (e) {
      throw e;
    }
  }
}
