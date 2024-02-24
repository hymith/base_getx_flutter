import 'package:base_getx_flutter/ui/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextWidget(
        text: "Bank Page",
        fontSize: AppDimens.TEXT_SIZE_TITLE_30,
        color: AppColors.main_color,
      ),
    );
  }
}
