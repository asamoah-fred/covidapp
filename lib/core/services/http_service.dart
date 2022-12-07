import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  //perform post requests
  Future<http.Response> post(
    String url,
    Map<String, dynamic> body,
  ) async {
    final header = <String, String>{
      'Accept': 'application/json',
      'Content-type': 'application/json',
    };
    return http.post(url, headers: header, body: jsonEncode(body));
  }

//perforn get requests
  Future<http.Response> get(String url) async {
    return http.get(url);
  }

//check if response is successful
  bool isSuccessful(http.Response r) =>
      r.statusCode >= 200 && r.statusCode < 400;
}
