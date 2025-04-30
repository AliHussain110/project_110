import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';
import 'package:project_110/utils/constants.dart';

class ExpenseCard extends StatelessWidget {
  final String expenseName;
  final String explanation;
  final String amount;

  const ExpenseCard({
    super.key,
    required this.expenseName,
    required this.explanation,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.85.sw,
      height: 0.1.sh,
      padding: EdgeInsets.all(Constants.cardKpadding.w),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(color: AppColors.inputFeildColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 80.w,
                height: 80.h,
                child: Card(
                  color: AppColors.cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(expenseName, style: AppTextStyles.bodyLarge()),
                  Text(explanation, style: AppTextStyles.bodyMedium()),
                ],
              ),
            ],
          ),
          Text(amount, style: AppTextStyles.bodyLarge()),
        ],
      ),
    );
  }
}
