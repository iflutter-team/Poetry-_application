import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      if (kDebugMode) {
        print(url);
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> postApi(
      {required String url,
      Map<String, dynamic>? body,
      required Map<String, String>? header}) async {
    try {
      print("url=============>$url");
      print("header=============>$header");
      print("body=============>$body");
      return await http.post(
        Uri.parse(url),
        body: body,
        headers: header,
      );
    } catch (e) {
      print(e);
    }
  }
}
