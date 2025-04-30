import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class NoteWidget extends StatelessWidget {
  final String note;

  const NoteWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.07),
        borderRadius: BorderRadius.circular(12.w),
      ),
      child: Row(
        children: [
          Icon(
            Icons.sticky_note_2_rounded,
            color: AppColors.primaryColor,
            size: 22.w,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Note: ",
                    style: AppTextStyles.bodyLarge(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainTextColor,
                    ),
                  ),
                  TextSpan(text: note, style: AppTextStyles.bodyLarge()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
