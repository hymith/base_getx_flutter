import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_page_controller.dart';

class TextInputWidget extends StatelessWidget {
  TextEditingController numberController;
  final HomePageController controller = Get.put(HomePageController());
  String hint;

  TextInputWidget({Key? key, required this.numberController, this.hint = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 40.sp,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.border_color),
          color: Colors.white),
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 3.0),
      child: TextFormField(
        onChanged: (value) {
          // controller.isEnabledTextInput.value = value.isNotEmpty;
          // print("Text input enable: ${controller.isEnabledTextInput.value}");
        },
        controller: numberController,
        validator: (String? value) {},
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
            contentPadding: const EdgeInsets.all(12.0),
            fillColor: Colors.white,
            hintText: '手機號碼',
            hintStyle: TextStyle(fontSize: 14.sp)),
        style: TextStyle(fontSize: 14.sp),
      ),
    );
  }
}
