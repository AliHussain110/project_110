import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';
import '../../utils/enum.dart';
import 'widgets/cashcreditbutton.dart';
import 'widgets/routine_form.dart';
import 'widgets/textinputfieldwidget.dart';
import 'widgets/type_selection_container.dart';
import 'widgets/typeselectionbutton.dart';

class AddDailyRoutine extends StatefulWidget {
  const AddDailyRoutine({super.key});

  @override
  State<AddDailyRoutine> createState() => _AddDailyRoutineState();
}

class _AddDailyRoutineState extends State<AddDailyRoutine> {
  RoutineType _type = RoutineType.vehicle;
  FuelType _fuelType = FuelType.cash;
  FuelType _paymentType = FuelType.cash;

  final TextEditingController _price = TextEditingController();
  final TextEditingController _fuel = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            "Daily Routine",
            style: AppTextStyles.displayLarge(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.h),
          TypeSelectionContainer(
            selectedType: _type,
            onTypeChanged: (type) {
              setState(() {
                _type = type;
              });
            },
          ),
          Divider(thickness: 1),
          SizedBox(height: 20.h),
          RoutineForm(type: _type),
          CashCreditButton(
            fuel: _fuel,
            hintText: "Fuel",
            selectedType: _fuelType,
            forSelectionCash: FuelType.cash,
            forSelectionCredit: FuelType.credit,
            cash: "Cash",
            credit: "Credit",
            onTypeChanged: (type) {
              setState(() {
                _fuelType = type;
              });
            },
          ),
          TextInputField(controller: _location, hintText: "Location"),
          CashCreditButton(
            fuel: _price,
            hintText: "Price",
            selectedType: _paymentType,
            forSelectionCash: FuelType.cash,
            forSelectionCredit: FuelType.credit,
            cash: "Cash",
            credit: "Credit",
            onTypeChanged: (type) {
              setState(() {
                _paymentType = type;
              });
            },
          ),
          TextInputField(controller: _description, hintText: "Description"),
        ],
      ),
    );
  }
}
