import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:project_110/theme/colors.dart';
import '../../theme/text_theme_style.dart';
import '../../utils/enum.dart';
// import 'widgets/cashcreditbutton.dart';
import 'widgets/routine_form.dart';
// import 'widgets/selectionbuttonoutsource.dart';
// import 'widgets/textinputfieldwidget.dart';
import 'widgets/type_selection_container.dart';
// import 'widgets/typeselectionbutton.dart';

class AddDailyRoutine extends StatefulWidget {
  const AddDailyRoutine({super.key});

  @override
  State<AddDailyRoutine> createState() => _AddDailyRoutineState();
}

class _AddDailyRoutineState extends State<AddDailyRoutine> {
  RoutineType _type = RoutineType.vehicle;
  FuelType _fuelType = FuelType.cash;
  FuelType _paymentType = FuelType.cash;
  CheckingOutsourced _checkingType = CheckingOutsourced.company;

  // FuelType _paymentType = FuelType.cash;

  final TextEditingController _price = TextEditingController();
  final TextEditingController _fuel = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          spacing: 1,
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

            RoutineForm(
              type: _type,
              selectedTypeOutsource: _checkingType,
              onTypeChangedOutsource: (type) {
                setState(() {
                  _checkingType = type;
                });
              },
              fuel: _fuel,
              selectedTypeFuel: _fuelType,
              onTypeChangedFuel: (type) {
                setState(() {
                  _fuelType = type;
                });
              },
              price: _price,
              onTypeChangedPrice: (type) {
                setState(() {
                  _paymentType = type;
                });
              },
              selectedTypePrice: _paymentType,
              location: _location,
              discription: _description,
            ),
          ],
        ),
      ),
    );
  }
}
