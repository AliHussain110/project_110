import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/colors.dart';
import '../../../utils/enum.dart';
import 'textinputfieldwidget.dart';
import 'typeselectionbutton.dart';

class CashCreditButton extends StatelessWidget {
  const CashCreditButton({
    super.key,
    required TextEditingController fuel,
    required this.hintText,
    required this.selectedType,
    required this.onTypeChanged,
    required this.forSelectionCash,
    required this.forSelectionCredit,
    required this.cash,
    required this.credit,
  }) : _fuel = fuel;

  final TextEditingController _fuel;
  final String hintText;
  final FuelType selectedType;
  final FuelType forSelectionCash;
  final FuelType forSelectionCredit;
  final String cash;
  final String credit;
  final Function(FuelType) onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInputField(width: 0.4, controller: _fuel, hintText: hintText),
        Container(
          height: 0.05.sh,
          width: 0.48.sw,
          padding: EdgeInsets.all(2.w),
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
        ),
      ],
    );
  }
}
