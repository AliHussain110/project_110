import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String title;

  const BalanceCard({
    super.key,
    required this.balance,
    this.title = 'Total Balance',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0.sw,
      height: 0.15.sh,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyles.bodyLarge(color: Colors.white)),
            Text(
              balance,
              style: AppTextStyles.displayLarge(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
