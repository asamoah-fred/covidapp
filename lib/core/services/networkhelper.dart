import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getCases() async {
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    return data;
  }
}

class NetworkHelper2 {
  final String url;
  NetworkHelper2(this.url);

  Future getAllCases() async {
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    return data;
  }
}
