import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colors.dart';
import '../../../utils/enum.dart';
import 'typeselectionbutton.dart';

class SelectionButtonForOutsource extends StatelessWidget {
  const SelectionButtonForOutsource({
    super.key,
    required this.selectedType,
    required this.onTypeChanged,
    required this.forSelectionCash,
    required this.forSelectionCredit,
    required this.cash,
    required this.credit,
  });

  final CheckingOutsourced selectedType;
  final CheckingOutsourced forSelectionCash;
  final CheckingOutsourced forSelectionCredit;
  final String cash;
  final String credit;
  final Function(CheckingOutsourced) onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.05.sh,
      width: 0.55.sw,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(18.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TypeSelection(
            minWidth: 0.01,
            minHeight: 0.04,
            name: cash,
            type: forSelectionCash,
            isSelected: selectedType == forSelectionCash,
            onTap: () => onTypeChanged(forSelectionCash),
          ),
          TypeSelection(
            minWidth: 0.01,
            minHeight: 0.04,
            name: credit,
            type: forSelectionCredit,
            isSelected: selectedType == forSelectionCredit,
            onTap: () => onTypeChanged(forSelectionCredit),
          ),
        ],
      ),
    );
  }
}
