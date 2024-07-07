import '../const/constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;

    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
      "Connection": "Keep-Alive",
    };
  }
  void updateHeader(String token) {
    _mainHeaders = {'Content-type': 'application/json; charset=UTF-8', 'Authorization': 'Bearer $token', "Connection": "Keep-Alive"};
  }

  Future<Response> getData(String uri) async {
   // print('object');
    try {
      // print(appBaseUrl);
      // print(_mainHeaders);
      Response response = await get(uri, headers: _mainHeaders);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    try {
      Response response = await post(uri, body, headers: _mainHeaders);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
