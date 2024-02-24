import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import '../../constants/app_constants.dart';
import '../api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';



class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<String> getUserToken() async {
    return sharedPreferences.getString(AppConstants.TOKEN) ?? "";
  }

  Future<Response> login(
      String language,
      String areaCode,
      String phone,
      String code,
      String deviceType,
      String modelCode,
      String osVersion,
      String deviceToken) async {
    return await apiClient.postData(AppConstants.LOGIN, {
      "language": language,
      "area_code": areaCode,
      "phone": phone,
      "code": code,
      "device_type": deviceType,
      "model_code": modelCode,
      "os_version": osVersion,
      "device_token": deviceToken
    });
  }
  
  Future<Response> logout(String language, String token) async{
    return await apiClient.postData(AppConstants.LOGOUT, {
      "language": language,
      "token": token
    });
  }

  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    if (kDebugMode) {
      print("Token: $token");
    }
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  bool clearSharedData() {
    sharedPreferences.remove(AppConstants.TOKEN);
    apiClient.token = '';
    return true;
  }
}
