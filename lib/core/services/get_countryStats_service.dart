import 'package:advanced_covid/core/models/country_stat_model.dart';
import 'package:advanced_covid/core/services/ApiRoutes.dart';
import 'package:advanced_covid/core/services/http_service.dart';
import 'package:advanced_covid/core/services/locator.dart';
import 'package:http/http.dart' as http;

class GetCountryStatService {
  HttpService httpService = locator<HttpService>();
  Future<CountryStatModel> getCountryStat(String country) async {
    try {
      final http.Response response =
          await httpService.get('${ApiRoutes.getCountryStats}/ghana');
      if (httpService.isSuccessful(response)) {
        final data = response.body;
        print(data);
        return countryStatModelFromJson(data);
      }
      return null;
    } catch (e) {
      throw e;
    }
  }
}
