import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import '../../../utils/enum.dart';
import 'typeselectionbutton.dart';

class TypeSelectionContainer extends StatelessWidget {
  final RoutineType selectedType;
  final Function(RoutineType) onTypeChanged;

  const TypeSelectionContainer({
    super.key,
    required this.selectedType,
    required this.onTypeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 0.05.sh,
        width: 0.6.sw,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(18.w),
        ),
        child: Row(
          children: [
            TypeSelection(
              name: "Vehicle",
              type: RoutineType.vehicle,
              isSelected: selectedType == RoutineType.vehicle,
              onTap: () => onTypeChanged(RoutineType.vehicle),
            ),
            TypeSelection(
              name: "Generator",
              type: RoutineType.generator,
              isSelected: selectedType == RoutineType.generator,
              onTap: () => onTypeChanged(RoutineType.generator),
            ),
          ],
        ),
      ),
    );
  }
}
