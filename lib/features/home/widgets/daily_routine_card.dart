import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/features/home/routinedetails.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class DailyRoutineCard extends StatelessWidget {
  final String name;
  final String location;
  final String amount;
  final String paymentType;
  final String vehicleNumber;

  const DailyRoutineCard({
    super.key,
    required this.name,
    required this.location,
    required this.amount,
    required this.paymentType,
    required this.vehicleNumber,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (ctx) => const RoutineDetails(),
        );
      },
      child: SizedBox(
        width: 1.0.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35.r,
                  backgroundColor: AppColors.accentColor,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        vehicleNumber,
                        style: AppTextStyles.bodyLarge(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppTextStyles.bodyLarge()),
                    Text(location, style: AppTextStyles.bodyMedium()),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  amount,
                  style: AppTextStyles.bodyLarge(
                    fontSize: 18,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(paymentType, style: AppTextStyles.bodyMedium()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
