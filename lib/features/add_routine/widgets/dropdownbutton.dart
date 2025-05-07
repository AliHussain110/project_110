import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/text_theme_style.dart';

class DropDownMenuSelection extends StatelessWidget {
  const DropDownMenuSelection({
    super.key,
    required this.operatorAndName,
    required this.menuList,
    required this.hintText,
    this.width = 0.45,
  });

  final String operatorAndName;
  final List<String> menuList;
  final double width;
  final String hintText; // TODO: Add dat

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.w,
      children: [
        Text(
          operatorAndName,
          style: AppTextStyles.bodyLarge(fontWeight: FontWeight.bold),
        ),
        DropdownMenu(
          hintText: hintText,
          enableSearch: false,
          width: width.sw,
          textStyle: AppTextStyles.bodyLarge(fontWeight: FontWeight.bold),

          alignmentOffset: Offset(0, 20.h),
          menuStyle: MenuStyle(
            elevation: WidgetStateProperty.all(10),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.w)),
            ),
          ),
          dropdownMenuEntries:
              menuList
                  .map((e) => DropdownMenuEntry(value: e, label: e))
                  .toList(),
        ),
      ],
    );
  }
}
