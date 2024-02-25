import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_dimens.dart';
import '../../widgets/text_widget.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextWidget(
        text: "Map Page",
        fontSize: AppDimens.TEXT_SIZE_24,
        color: AppColors.main_color,
      ),
    );
  }
}
