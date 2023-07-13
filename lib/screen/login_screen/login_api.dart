import 'package:http/http.dart' as http;
import '../../model/login_model.dart';
import '../../services/http_api_services.dart';
import '../../utils/endpoint_res.dart';

class LoginApi{
  static Future loginUser(Map<String, dynamic> body) async {
    try {
      String url = EndPointRes.loginEndPoint;
      http.Response? response = await HttpService.postApi(
        url: url,
        body: body,
        header: {'Content-Type': 'application/x-www-form-urlencoded'},
      );
      if (response != null && response.statusCode == 200) {
        print("response================================>${response.body}");
        return loginModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}