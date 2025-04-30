import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colors.dart';
import '../../../theme/text_theme_style.dart';
import '../../../utils/constants.dart';

class YearlyCardRoutine extends StatelessWidget {
  const YearlyCardRoutine({this.isYear = true, required this.data, super.key});
  final String data;
  final bool isYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 0.4.sw,
      // height: 0.28.sh,
      padding: EdgeInsets.all(Constants.cardKpadding.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.circular(Constants.cardBorderRaius.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.all(Constant),
            alignment: Alignment.bottomCenter,
            width: 1.0.sw,
            height: 0.1.sh,
            child: Text(
              data,
              style: AppTextStyles.displayLarge(
                fontSize: isYear ? 40 : 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Divider(thickness: 0.8),
          ammountCard("Total Amount", 2000),
          // Divider(thickness: 0.8),
          ammountCard("Expenses", 1000),
          // Divider(thickness: 0.8),
        ],
      ),
    );
  }

  Widget ammountCard(String title, int ammount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.bodyLarge()),
        Text(
          "$ammount Rs",
          style: AppTextStyles.bodyMedium(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
