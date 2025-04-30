import 'package:flutter/material.dart';

import '../../../common/botton_widget.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_theme_style.dart' show AppTextStyles;

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonWidget(
          width: 0.4,
          onTap: () {},
          title: 'Update',
          bgroundColor: AppColors.primaryColor,
          textStyle: AppTextStyles.bodyLarge(color: Colors.white),
        ),
        ButtonWidget(
          width: 0.4,
          onTap: () => Navigator.pop(context),
          title: 'Okay',
          bgroundColor: AppColors.successColor,
          textStyle: AppTextStyles.bodyLarge(color: Colors.white),
        ),
      ],
    );
    ;
  }
}
