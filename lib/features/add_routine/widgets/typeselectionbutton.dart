import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../theme/colors.dart';
import '../../../theme/text_theme_style.dart';
// import '../../../utils/enum.dart';

class TypeSelection extends StatelessWidget {
  const TypeSelection({
    super.key,
    required this.name,
    required this.type,
    required this.isSelected,
    required this.onTap,
    this.minHeight = 0.05,
    this.minWidth = 0.3,
    this.fontSize = 12,
  });

  final String name;
  final dynamic type;
  final bool isSelected;
  final VoidCallback onTap;
  final double minHeight;
  final double minWidth;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : Colors.transparent,
        minimumSize: Size(minWidth.sw, minHeight.sh),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.w),
            topRight: Radius.circular(18.w),
            bottomLeft: Radius.circular(18.w),
            bottomRight: Radius.circular(18.w),
          ),
        ),
      ),
      onPressed: onTap,
      child: Text(
        name,
        style: AppTextStyles.bodySmall(
          color: isSelected ? AppColors.primaryColor : Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
