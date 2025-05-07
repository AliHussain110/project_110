import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/text_theme_style.dart';
import '../../../utils/enum.dart';
import 'dropdownbutton.dart';

class RoutineForm extends StatelessWidget {
  final RoutineType type;

  const RoutineForm({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropDownMenuSelection(
                operatorAndName: "${type.name} Name",
                menuList: ["Name1", "Name2", "Name3", "Name4"],
                hintText: type == RoutineType.vehicle ? "Vehicle" : "Generator",
              ),
              DropDownMenuSelection(
                operatorAndName:
                    type == RoutineType.generator
                        ? "Generator Operator"
                        : "Vehicle Driver",
                menuList: ["Name1", "Name2", "Name3", "Name4"],
                hintText: type == RoutineType.vehicle ? "Driver" : "Operator",
              ),
            ],
          ),
          SizedBox(height: 10.h),
          DropDownMenuSelection(
            width: 1.0,
            operatorAndName: "Client Name",
            menuList: ["Name1", "Name2", "Name3", "Name4"],
            hintText: "Client",
          ),
        ],
      ),
    );
  }
}
