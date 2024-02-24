import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';
import '../../widgets/text_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextWidget(
        text: "Notification Page",
        fontSize: AppDimens.TEXT_SIZE_TITLE_30,
        color: AppColors.main_color,
      ),
    );
  }
}
