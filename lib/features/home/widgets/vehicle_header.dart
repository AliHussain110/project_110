import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class VehicleHeader extends StatelessWidget {
  final String title;
  final IconData icon;

  const VehicleHeader({
    super.key,
    required this.title,
    this.icon = Icons.directions_car_filled_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryColor, size: 32.w),
        SizedBox(width: 12.w),
        Text(
          title,
          style: AppTextStyles.displayLarge(
            color: AppColors.mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
