import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';
import '../../widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextWidget(
        text: "Home Page",
        fontSize: AppDimens.TEXT_SIZE_TITLE_30,
        color: AppColors.main_color,
      ),
    );
  }
}
