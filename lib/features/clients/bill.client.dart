import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/text_theme_style.dart';

import '../../theme/colors.dart';
import '../all_routine/displayeachscreen.dart';
import '../all_routine/eachroutinescreen..dart';
import '../home/widgets/monthly_card.dart';

class ClientBill extends StatefulWidget {
  const ClientBill({super.key});

  @override
  State<ClientBill> createState() => _ClientBillState();
}

class _ClientBillState extends State<ClientBill> {
  bool _isOpen = false;
  final Gradient customGradient = LinearGradient(
    colors: [AppColors.primaryColor, AppColors.secondaryColor],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          _isOpen
              ? FloatingActionButton(
                onPressed: () {},
                elevation: 3,
                backgroundColor: AppColors.primaryColor.withValues(alpha: 0.9),
                child: Icon(Icons.add, size: 30.w, color: Colors.white),
              )
              : null,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            children: [
              // SizedBox(height: 20.h),
              Text("Abrar Butt", style: AppTextStyles.displayMedium()),
              Center(
                child: Container(
                  height: 100.h,
                  width: 0.56.sw,
                  padding: EdgeInsets.all(15.w),
                  margin: EdgeInsets.all(5.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 20,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      ),
                    ],
                    // gradient: LinearGradient(
                    //   colors: [
                    //     AppColors.primaryColor,
                    //     AppColors.secondaryColor,
                    //   ],
                    //   begin: Alignment.centerLeft,
                    //   end: Alignment.centerRight,
                    // ),
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        child: switchWidget(
                          customGradient: customGradient,
                          topLeft: 20,
                          topright: 20,
                          bottomRight: 20,
                          bottomLeft: 20,
                          index: 0,
                          currentIndex: _index,
                          txt: "UnPaid",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: switchWidget(
                          customGradient: customGradient,
                          topLeft: 20,
                          topright: 20,
                          bottomRight: 20,
                          bottomLeft: 20,
                          index: 1,
                          currentIndex: _index,
                          txt: "Paid",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MonthlyCard(title: "Current Bill", amount: "1000 Rs"),
                  MonthlyCard(title: "Previous Bill", amount: "4800 Rs"),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder:
                      (ctx, index) => SizedBox(
                        width: 1.0.sw,
                        // height: 0.1.sh,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isOpen = !_isOpen;
                            });
                            showBottomSheet(
                              context: ctx,
                              builder: (sheetBuilderCtx) {
                                return DisplayScreenBottomSheet(
                                  vehicalDate: "Monday, April 28, 2025",
                                  vehicalNumber: 'LRJ 1404',
                                  clientName: 'Abrar Butt',
                                  driverName: 'Mohsin',
                                  challan: '0',
                                  fuel: '0',
                                  outSource: 'No',
                                  location: 'Light Room',
                                  note: null,
                                  status: 'Paid',
                                  ammount: 10000,
                                  clientFuel: 'Yes',
                                );
                              },
                            ).closed.then((value) {
                              setState(() {
                                _isOpen = !_isOpen;
                              });
                            });
                          },
                          child: Card(
                            margin: EdgeInsets.all(10.w),
                            elevation: 2,
                            child: Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "May 27, Tuesday",
                                        style: AppTextStyles.bodyLarge(),
                                      ),
                                      Text(
                                        "10,000",
                                        style: AppTextStyles.bodyMedium(),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Veh-1404",
                                        style: AppTextStyles.bodyLarge(),
                                      ),
                                      Text(
                                        "Shah",
                                        style: AppTextStyles.bodyMedium(),
                                      ),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Challan ",
                                      style: AppTextStyles.bodyLarge(),
                                      children: [
                                        TextSpan(
                                          text: "500",
                                          style: AppTextStyles.bodyMedium(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Fuel ",
                                      style: AppTextStyles.bodyLarge(),
                                      children: [
                                        TextSpan(
                                          text: "5,000",
                                          style: AppTextStyles.bodyMedium(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Location ",
                                      style: AppTextStyles.bodyLarge(),
                                      children: [
                                        TextSpan(
                                          text: "Light Room",
                                          style: AppTextStyles.bodyMedium(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
