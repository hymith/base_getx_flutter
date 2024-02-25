import 'package:base_getx_flutter/ui/widgets/button_widget.dart';
import 'package:base_getx_flutter/ui/widgets/text_input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';
import '../../../constants/app_string.dart';
import '../../widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: TextWidget(
            text: "Home Page",
            fontSize: AppDimens.TEXT_SIZE_24,
            color: AppColors.main_color,
          ),
        ),
        TextInputWidget(numberController: null, hint: AppString.PHONE_NUMBER,),
        ButtonWidget(text: "Test Button", onPress: (){
          print(100.w);
        })
      ],
    );
  }
}
