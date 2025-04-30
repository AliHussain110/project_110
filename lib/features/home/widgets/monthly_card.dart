import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class MonthlyCard extends StatelessWidget {
  final String title;
  final String amount;

  const MonthlyCard({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.1.sh,
      width: 0.45.sw,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyles.bodyMedium()),
            Text(
              amount,
              style: AppTextStyles.bodyLarge(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
