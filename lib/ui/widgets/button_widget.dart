import 'package:base_getx_flutter/ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimens.dart';

class ButtonWidget extends StatelessWidget {
  Function() onPress;
  String text;
  double? marginTop,
      marginLeft,
      marginRight,
      marginBottom;

  ButtonWidget(
      {super.key,
      required this.text,
      required this.onPress,
      this.marginLeft,
      this.marginRight,
      this.marginBottom,
      this.marginTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.W_100,
      margin: EdgeInsets.only(
          left: marginLeft ?? AppDimens.align24,
          top: marginTop ?? AppDimens.align10,
          right: marginRight ?? AppDimens.align24,
          bottom: marginBottom ?? AppDimens.align10),
      child: ElevatedButton(
          onPressed: onPress,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.button_color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                  vertical: AppDimens.align12, horizontal: 0),
            ),
          ),
          child: TextWidget(
            text: text,
            fontSize: AppDimens.TEXT_SIZE_12,
            color: AppColors.white,
          )),
    );
  }
}
