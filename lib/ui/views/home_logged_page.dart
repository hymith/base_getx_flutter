import 'package:base_getx_flutter/ui/views/home/home_page.dart';
import 'package:base_getx_flutter/ui/views/places/map_page.dart';
import 'package:base_getx_flutter/ui/views/upload/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_constants.dart';
import '../../constants/app_dimens.dart';
import '../../constants/app_images.dart';
import '../../constants/app_string.dart';
import '../widgets/bottom_nav/CurvedNavigationBarCustom.dart';
import '../widgets/text_widget.dart';
import 'bank/bank_page.dart';
import 'notification/notification_page.dart';



class HomeLoggedPage extends StatefulWidget {
  const HomeLoggedPage({Key? key}) : super(key: key);

  @override
  State<HomeLoggedPage> createState() => _HomeLoggedPageState();
}

class _HomeLoggedPageState extends State<HomeLoggedPage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List _pages = [
    const HomePage(),
    const NotificationPage(),
    const MapPage(),
    const BankPage(),
    const UploadPage(),
  ];

  Future<bool> onBackPress(){
    return Future.value(false);
  }

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBarCustom(
          key: _bottomNavigationKey,
          index: 0,
          height: 75.0,
          items: <Widget>[
            _page == 0 ? Image.asset(AppConstants.IMAGE_URL + AppImages.HOME_ICON, width: 30,) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.h,),
                Image.asset(AppConstants.IMAGE_URL + AppImages.HOME_ICON_UNSELECT, width: 30,),
                TextWidget(text: AppString.FRONT_PAGE, fontSize: AppDimens.TEXT_LABLE_INPUT_SIZE, fontWeight: FontWeight.w400, color: AppColors.grey3,)
              ],
            ),
            _page == 1 ? Image.asset(AppConstants.IMAGE_URL + AppImages.MENU_ICON, width: 30,) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.h,),
                Image.asset(AppConstants.IMAGE_URL + AppImages.MENU_ICON_UNSELECT, width: 30,),
                TextWidget(text: AppString.RECOMMEND, fontSize: AppDimens.TEXT_LABLE_INPUT_SIZE, fontWeight: FontWeight.w400, color: AppColors.grey3,)
              ],
            ),
            _page == 2 ? Image.asset(AppConstants.IMAGE_URL + AppImages.PLACE, width: 30,) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.h,),
                Image.asset(AppConstants.IMAGE_URL + AppImages.PLACE_UNSELECT, width: 30,),
                TextWidget(text: AppString.LOCATION, fontSize: AppDimens.TEXT_LABLE_INPUT_SIZE, fontWeight: FontWeight.w400, color: AppColors.grey3,)
              ],
            ),
            _page == 3 ? Image.asset(AppConstants.IMAGE_URL + AppImages.BANK, width: 30,) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.h,),
                Image.asset(AppConstants.IMAGE_URL + AppImages.BANK_UNSELECT, width: 30,),
                TextWidget(text: AppString.BANK_ACCOUNT, fontSize: AppDimens.TEXT_LABLE_INPUT_SIZE, fontWeight: FontWeight.w400, color: AppColors.grey3,)
              ],
            ),
            _page == 4 ? Image.asset(AppConstants.IMAGE_URL + AppImages.UPLOAD_ICON_SELECTED, width: 30,) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.h,),
                Image.asset(AppConstants.IMAGE_URL + AppImages.UPLOAD_ICON, width: 30,),
                TextWidget(text: AppString.BANK_ACCOUNT, fontSize: AppDimens.TEXT_LABLE_INPUT_SIZE, fontWeight: FontWeight.w400, color: AppColors.grey3,)
              ],
            ),
          ],
          // color: Colors.white,
          buttonBackgroundColor: AppColors.button_color,
          backgroundColor: AppColors.grey4,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: WillPopScope(
          onWillPop: onBackPress,
          child: Center(
            child: _pages[_page]
          ),
        ));
  }
}