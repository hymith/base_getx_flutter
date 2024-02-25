import 'package:base_getx_flutter/constants/app_colors.dart';
import 'package:base_getx_flutter/ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_dimens.dart';
import '../../constants/app_string.dart';

showCustomSnackBar(String message,
    {bool isError = true, String title = AppString.ERROR_VERIFICATION_CODE}) {
  Get.snackbar(
    title,
    message,
    titleText: TextWidget(
      text: title,
      color: AppColors.white, fontSize: AppDimens.TEXT_SIZE_12,
    ),
    messageText: Text(
      message,
      style: const TextStyle(
        color: AppColors.white,
      ),
    ),
    colorText:  AppColors.white,
    snackPosition: SnackPosition.TOP,
    backgroundColor: AppColors.redColor,
  );
}
