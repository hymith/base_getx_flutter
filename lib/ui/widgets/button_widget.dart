import 'package:base_getx_flutter/ui/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimens.dart';



class ButtonWidget extends StatelessWidget {
  Function() onPress;
  String text;
  ButtonWidget({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 40.sp,
      child: ElevatedButton(
        onPressed:onPress,
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(AppColors.button_color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
        child: TextWidget(text: text, fontSize: AppDimens.TEXT_SIZE_20, color: Colors.white,)
      ),
    );
  }
}
