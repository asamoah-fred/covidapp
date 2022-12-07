import 'package:advanced_covid/core/services/ApiRoutes.dart';
import 'package:advanced_covid/core/services/http_service.dart';
import 'package:advanced_covid/core/services/locator.dart';
import 'package:http/http.dart' as http;

class GetAllStatService {
  HttpService httpService = locator<HttpService>();
  Future getAllStat() async {
    try {
      final http.Response response =
          await httpService.get('${ApiRoutes.getAllStats}');
      if (httpService.isSuccessful(response)) {
        final data = response.statusCode;
        return data;
      }
      return response.statusCode;
    } catch (e) {
      throw e;
    }
  }
}
