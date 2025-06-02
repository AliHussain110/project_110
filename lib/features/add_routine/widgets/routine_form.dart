import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:project_110/theme/text_theme_style.dart';
import '../../../utils/enum.dart';
import 'cashcreditbutton.dart';
import 'dropdownbutton.dart';
import 'selectionbuttonoutsource.dart';
import 'textinputfieldwidget.dart';

class RoutineForm extends StatelessWidget {
  final RoutineType type;

  const RoutineForm({
    super.key,
    required this.type,
    required this.onTypeChangedFuel,
    required this.fuel,
    required this.selectedTypeFuel,
    required this.onTypeChangedPrice,
    required this.price,
    required this.selectedTypePrice,
    required this.location,
    required this.discription,
    required this.selectedTypeOutsource,
    required this.onTypeChangedOutsource,
  });
  final TextEditingController fuel;
  final TextEditingController location;
  final TextEditingController discription;
  final FuelType selectedTypeFuel;
  final Function(FuelType) onTypeChangedFuel;
  final TextEditingController price;
  final FuelType selectedTypePrice;
  final Function(FuelType) onTypeChangedPrice;
  final CheckingOutsourced selectedTypeOutsource;
  final Function(CheckingOutsourced) onTypeChangedOutsource;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionButtonForOutsource(
            selectedType: selectedTypeOutsource,
            forSelectionCash: CheckingOutsourced.company,
            forSelectionCredit: CheckingOutsourced.outsoruced,
            cash: "110",
            credit: "Outsourced",
            onTypeChanged: onTypeChangedOutsource,
          ),
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

          CashCreditButton(
            fuel: fuel,
            hintText: "Fuel",
            selectedType: selectedTypeFuel,
            forSelectionCash: FuelType.cash,
            forSelectionCredit: FuelType.credit,
            cash: "Cash",
            credit: "Credit",
            onTypeChanged: onTypeChangedFuel,
          ),
          TextInputField(controller: location, hintText: "Location"),
          CashCreditButton(
            fuel: price,
            hintText: "Price",
            selectedType: selectedTypePrice,
            forSelectionCash: FuelType.cash,
            forSelectionCredit: FuelType.credit,
            cash: "Cash",
            credit: "Credit",
            onTypeChanged: onTypeChangedPrice,
          ),
          TextInputField(controller: discription, hintText: "Description"),
        ],
      ),
    );
  }
}
