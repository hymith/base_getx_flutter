import 'package:get/get.dart';

import '../views/home/home_page.dart';
import '../views/home_logged_page.dart';

class RouteHelper {
  static const String detailPage = "/detail-page";
  static const String referralPage = "/referral-page";
  static const String mapDetailPage = "/map-detail-page";
  static const String homeSettingPage = "/home-setting-page";
  static const String otpPage = "/otp-page";
  static const String homePage = "/home-page";
  static const String homeLoggedPage = "/home-logged-page";
  static const String registerPage = "/register-page";

  static String getDetailPage(int pageId, String page) =>
      '$detailPage?pageId=$pageId&page=$page';

  static String getReferralPage() => '$referralPage';

  static String getMapDetailPage(int pageId, String page) =>
      '$mapDetailPage?pageId=$pageId&page=$page';

  static String getHomeSettingPage() => '$homeSettingPage';

  static String getOtpPage() => '$otpPage';

  static String getHomePage() => '$homePage';

  static String getHomeLoggedPage() => '$homeLoggedPage';


  static List<GetPage> routes = [
    // GetPage(
    //     name: detailPage,
    //     page: () {
    //       print("detail-page called");
    //       var pageId = Get.parameters['pageId'];
    //       var page = Get.parameters['page'];
    //       return DetailPage(
    //         pageId: int.parse(pageId!),
    //         page: page!,
    //       );
    //     },
    //     transition: Transition.leftToRight),

    GetPage(
        name: homePage,
        page: () => const HomePage(),
        transition: Transition.leftToRight),
    GetPage(
      name: homeLoggedPage,
      page: () => const HomeLoggedPage(),
      transition: Transition.leftToRight
    ),
  ];

}
