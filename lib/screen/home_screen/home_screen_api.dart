import 'package:poetry/services/http_api_services.dart';
import 'package:poetry/utils/endpoint_res.dart';
import 'package:http/http.dart' as http;

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: EndPointRes.sliderHomeScreenEndPoint);
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return response.body;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
