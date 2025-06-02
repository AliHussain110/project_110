import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/features/all_routine/widgets/gridview.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';
import 'package:project_110/utils/constants.dart';

class AllRoutinePage extends StatefulWidget {
  const AllRoutinePage({super.key});

  @override
  State<AllRoutinePage> createState() => _AllRoutinePageState();
}

class _AllRoutinePageState extends State<AllRoutinePage> {
  final List<String> yearData = ["2025"];
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.pageKpadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            searchRoutine(),
            SizedBox(height: 25.h),

            Text(
              "All Routines",
              style: AppTextStyles.displayMedium(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(thickness: 1),
            GridViewBuilderWidget(dataList: yearData),

            // yearlyRoutineCardGrid(),
          ],
        ),
      ),
    );
  }

  Widget searchRoutine() {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: _searchController,
        keyboardType: TextInputType.text,
        cursorColor: AppColors.primaryColor,
        style: AppTextStyles.bodyMedium(
          color: AppColors.mainTextColor,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search routines...',
          hintStyle: AppTextStyles.bodyMedium(color: AppColors.lightTextColor),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: AppColors.primaryColor,
            size: 24.w,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.mic_rounded,
              color: AppColors.secondaryColor,
              size: 24.w,
            ),
            onPressed: () {},
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor.withOpacity(0.2),
              width: 1.5,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
        ),
      ),
    );
  }
}
