import 'package:get/get_connect/http/src/response/response.dart';
import '../../constants/app_constants.dart';
import '../api/api_client.dart';



class BankRepo {
  final ApiClient apiClient;
  BankRepo({required this.apiClient});

  Future<Response> getListBank() async{
    return await apiClient.getData(AppConstants.GET_BANK);
  }
}