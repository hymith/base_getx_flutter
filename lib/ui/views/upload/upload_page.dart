import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';
import '../../widgets/text_widget.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: AppDimens.H_5),
      child: TextWidget(
        text: "上傳收據",
        fontSize: AppDimens.TEXT_SIZE_24,
        color: AppColors.main_color,
      ),
    );
  }
}
