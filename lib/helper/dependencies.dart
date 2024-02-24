
import 'package:get/get.dart';
import '../constants/app_constants.dart';
import '../controllers/auth_controller.dart';
import '../controllers/bank_controller.dart';
import '../controllers/home_page_controller.dart';
import '../controllers/places_controller.dart';
import '../controllers/referal_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/auth_repo.dart';
import '../data/repository/bank_repo.dart';
import '../data/repository/notification_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/base_controller.dart';

Future<void> init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => sharedPreferences);
    Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
    Get.lazyPut(()=>ListNotificationRepo(apiClient: Get.find()));
    Get.lazyPut(()=>BankRepo(apiClient: Get.find()));

    //controller
    Get.lazyPut(() => AuthController(authRepo: Get.find()));
    Get.lazyPut(() => BankController(bankRepo: Get.find()));
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => BaseController());
    Get.lazyPut(() => ReferralController());
    Get.lazyPut(() => PlaceController());
    Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
}