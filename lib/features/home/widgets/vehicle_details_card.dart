import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class VehicleDetailsCard extends StatelessWidget {
  final String driverName;
  final String challanAmount;
  final String fuelAmount;
  final String location;

  const VehicleDetailsCard({
    super.key,
    required this.driverName,
    required this.challanAmount,
    required this.fuelAmount,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: AppColors.primaryColor.withOpacity(0.10),
      color: AppColors.surfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.w),
        side: BorderSide(color: AppColors.primaryColor.withOpacity(0.08)),
      ),
      child: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDriverInfo(),
            SizedBox(height: 14.h),
            _buildDivider(),
            SizedBox(height: 10.h),
            _buildDetailRow('Driver', driverName),
            SizedBox(height: 8.h),
            _buildDetailRow('Challan', challanAmount),
            SizedBox(height: 8.h),
            _buildDetailRow('Fuel', fuelAmount),
            SizedBox(height: 8.h),
            _buildLocationInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildDriverInfo() {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.w,
          backgroundColor: AppColors.primaryColor.withOpacity(0.12),
          child: Icon(Icons.person, color: AppColors.primaryColor, size: 28.w),
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abrar Butt',
              style: AppTextStyles.bodyLarge(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.labelLarge()),
        Text(value, style: AppTextStyles.bodyLarge()),
      ],
    );
  }

  Widget _buildLocationInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.location_on_rounded,
          color: AppColors.primaryColor,
          size: 20.w,
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: Text('Location: $location', style: AppTextStyles.bodyMedium()),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(height: 0, thickness: 0.5, color: AppColors.mainTextColor);
  }
}
