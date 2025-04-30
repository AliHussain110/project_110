import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/common/botton_widget.dart';
import 'package:project_110/features/home/widgets/note_widget.dart';
import 'package:project_110/features/home/widgets/vehicle_details_card.dart';
import 'package:project_110/features/home/widgets/vehicle_header.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';
import 'package:project_110/utils/constants.dart';

import 'widgets/buttons.dart';

class RoutineDetails extends StatelessWidget {
  const RoutineDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.65.sh,
      width: 1.0.sw,
      child: _buildMainCard(context),
    );
  }

  Widget _buildMainCard(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: AppColors.primaryColor.withValues(alpha: 0.12),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Constants.bottomSheetBorderRaius.w),
        ),
      ),
      child: Container(
        decoration: _buildCardDecoration(),
        child: Padding(
          padding: EdgeInsets.all(Constants.bottomSheetKpadding.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VehicleHeader(title: 'Vehicle No.'),
              SizedBox(height: 18.h),
              const VehicleDetailsCard(
                driverName: 'Mohsin',
                challanAmount: '0 Rs',
                fuelAmount: '0 Rs',
                location: 'description will come here',
              ),
              SizedBox(height: 18.h),
              _buildAmountDisplay(),
              SizedBox(height: 10.h),
              const NoteWidget(note: 'description will come here'),
              const Spacer(),
              ButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildCardDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [AppColors.primaryColor.withOpacity(0.10), AppColors.cardColor],
      ),
      borderRadius: BorderRadius.vertical(top: Radius.circular(36.w)),
      boxShadow: [
        BoxShadow(
          color: AppColors.primaryColor.withOpacity(0.08),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ],
    );
  }

  Widget _buildAmountDisplay() {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        '1000 Rs',
        style: AppTextStyles.labelLarge(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
