import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/features/all_routine/widgets/gridview.dart';
import '../../theme/text_theme_style.dart';
import '../../utils/constants.dart';

// import 'widgets/yearlycardroutine.dart';

class MonthCardBottomSheet extends StatelessWidget {
  MonthCardBottomSheet({super.key});
  final List<String> monthData = [
    "January",
    "Feburary",
    "March",
    "April",
    "May",
    "June",
    "July",
    "Augest",
    "September",
    "Octuber",
    "November",
    "December",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0.sw,
      height: 0.52.sh,
      padding: EdgeInsets.symmetric(
        horizontal: Constants.bottomSheetKpadding.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.bottomSheetBorderRaius.w),
      ),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Text(
            "Monthly Routine",
            style: AppTextStyles.displayLarge(fontWeight: FontWeight.bold),
          ),
          Divider(thickness: 1),
          GridViewBuilderWidget(dataList: monthData, isYear: false),
        ],
      ),
    );
  }
}
