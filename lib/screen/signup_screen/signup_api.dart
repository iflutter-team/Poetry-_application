import 'package:http/http.dart' as http;
import '../../model/register_model.dart';
import '../../services/http_api_services.dart';
import '../../utils/endpoint_res.dart';

class SignupApi{
  static Future registerUser({Map<String, dynamic>? body}) async {
    try {
      String url = EndPointRes.registerEndPoint;
      http.Response? response = await HttpService.postApi(
        url: url,
        body: body,
        header: {'Content-Type': 'application/json'},
      );
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return registerModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}