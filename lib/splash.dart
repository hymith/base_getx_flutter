import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'constants/app_constants.dart';
import 'constants/app_images.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // final HomePageController _controller = Get.put(HomePageController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 60.w,
          margin: EdgeInsets.only(bottom: 30.h),
          child: Image.asset(AppConstants.IMAGE_URL + AppImages.LOGO),
        ),
      ),
    );
  }
}
