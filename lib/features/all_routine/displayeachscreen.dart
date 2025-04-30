import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

import '../home/widgets/buttons.dart';
import '../home/widgets/note_widget.dart';

class DisplayScreenBottomSheet extends StatelessWidget {
  const DisplayScreenBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.8.sh,
      width: 1.0.sh,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.secondaryColor, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.vertical(top: Radius.circular(40.w)),
      ),
      child: Column(
        spacing: 12.w,
        children: [
          Text(
            "Monday, April 28, 2025",
            style: AppTextStyles.displayMedium(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 0.5.sh,
            width: 1.0.sw,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  spacing: 1.w,
                  children: [
                    Text(
                      "Vehical No#",
                      style: AppTextStyles.displayMedium(fontSize: 22),
                    ),
                    Divider(thickness: 1),
                    detailOfRoutine("Client", "Abrar Butt"),
                    detailOfRoutine("Driver", "Mohsin"),
                    detailOfRoutine("challan", "0"),
                    detailOfRoutine("Fuel", "1000 Rs"),
                    detailOfRoutine("Outsources", "yes"),
                    detailOfRoutine("Clients Fuel", "yes"),
                    Container(
                      width: 1.0.sh,
                      height: 0.05.sh,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Location#",
                              style: AppTextStyles.bodyLarge(),
                            ),
                            TextSpan(
                              text: " Location here",
                              style: AppTextStyles.bodyMedium(),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: AppColors.successColor,
                          borderRadius: BorderRadius.circular(12.w),
                        ),
                        child: Text(
                          "Paid",
                          style: AppTextStyles.bodyMedium(
                            color: AppColors.inputFeildColor2,
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    // feteched from home widget from details of daily routine
                    NoteWidget(note: "Location"),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "10,000 Rs",
              style: AppTextStyles.displayMedium(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          ButtonsWidget(),
        ],
      ),
    );
  }

  Row detailOfRoutine(String title, String child) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.bodyLarge(color: AppColors.primaryColor),
        ),
        Text(
          child,
          style: AppTextStyles.bodyMedium(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
