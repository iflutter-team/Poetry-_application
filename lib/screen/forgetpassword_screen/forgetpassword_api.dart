import '../../model/forgotpassword_model.dart';
import '../../services/http_api_services.dart';
import 'package:http/http.dart' as http;
import '../../utils/endpoint_res.dart';

class ForgotPasswordApi{
  static Future forgotPassword(Map<String, dynamic> body) async {
    try {
      String url = EndPointRes.forgotPasswordEndPoint;
      http.Response? response = await HttpService.postApi(
        url: url,
        body: body,
        header: {'Content-Type': 'application/x-www-form-urlencoded'},
      );
      if (response != null && response.statusCode == 200) {
        print("response================================>${response.body}");
        return forgotPasswordModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}