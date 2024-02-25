import 'package:base_getx_flutter/constants/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../controllers/home_page_controller.dart';

class TextInputWidget extends StatelessWidget {
  TextEditingController? numberController;
  final HomePageController controller = Get.put(HomePageController());
  String hint;
  final double? marginTop, marginLeft, marginRight, marginBottom;

  TextInputWidget(
      {super.key,
      this.numberController,
      this.hint = "",
      this.marginTop,
      this.marginRight,
      this.marginLeft,
      this.marginBottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.W_100,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.border_color),
          color: AppColors.white),
      margin: EdgeInsets.only(
          left: marginLeft ?? AppDimens.align24,
          top: marginTop ?? AppDimens.align10,
          right: marginRight ?? AppDimens.align24,
          bottom: marginBottom ?? AppDimens.align10),
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
            fillColor: AppColors.white,
            hintText: hint,
            hintStyle: TextStyle(fontSize: AppDimens.TEXT_SIZE_12)),
        style: TextStyle(fontSize: AppDimens.TEXT_SIZE_12),
      ),
    );
  }
}
