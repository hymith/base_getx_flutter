import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ApiClient extends GetConnect implements GetxService{
  late String token;
  late String oldToken;
  final String appBaseUrl;

  late SharedPreferences sharedPreferences;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = sharedPreferences.getString(AppConstants.TOKEN)?? "";
    // _mainHeader = {
    //   'Content-type': 'application/json; charset=UTF-8',
    //   'Authorization': 'Bearer $token',
    // };
  }

  Future<Response> getData(
      String uri, {Map<String, String>? header}
      ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body) async {
    try {
      Response response = await post(uri, body);
      if (kDebugMode) {
        print("${response.body} body: $body");
      }
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 999, statusText: e.toString());
    }
  }
}