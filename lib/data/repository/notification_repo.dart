import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import '../../constants/app_constants.dart';
import '../api/api_client.dart';



class ListNotificationRepo extends GetxService{
  final ApiClient apiClient;
  ListNotificationRepo({required this.apiClient});

  Future<Response> getListNotificationsRepo(String language, String token, String deviceType) async{
    return await apiClient.getData("${AppConstants.GET_NOTIFICATION}?language=$language&token=$token&device_type=$deviceType");
  }

  Future<Response> readNotification(
      String language,
      String token,
      String deviceType,
      id
      ) async {
    return await apiClient.postData(AppConstants.READ_NOTIFICATION, {
      "language": language,
      "token": token,
      "device_type": deviceType,
      "id": id
    });
  }

}