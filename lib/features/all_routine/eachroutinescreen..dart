import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

import '../home/widgets/monthly_card.dart';
import 'displayeachscreen.dart';

class EachMonthlRoutine extends StatefulWidget {
  const EachMonthlRoutine({super.key});

  @override
  State<EachMonthlRoutine> createState() => _EachMonthlRoutineState();
}

class _EachMonthlRoutineState extends State<EachMonthlRoutine> {
  final Gradient customGradient = LinearGradient(
    colors: [AppColors.primaryColor, AppColors.secondaryColor],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    // color: Colors.red,
                    width: 0.01.sw,
                    // child: Text("data"),
                  ),
                  // SizedBox(width: 0.15.sw),
                  Container(
                    height: 100.h,
                    width: 0.8.sw,
                    padding: EdgeInsets.all(15.w),
                    margin: EdgeInsets.all(20.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                            txt: "All",
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
                            txt: "Vehicla",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: switchWidget(
                            customGradient: customGradient,
                            topLeft: 20,
                            topright: 20,
                            bottomRight: 20,
                            bottomLeft: 20,
                            index: 2,
                            currentIndex: _index,
                            txt: "Generator",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // color: Colors.red,
                    width: 0.01.sw,
                    // child: Text("data"),
                  ),
                ],
              ),
              // SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "April,2025",
                    style: AppTextStyles.bodyMedium(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    // padding: EdgeInsets.zero,
                    // constraints: BoxConstraints(
                    //   minHeight: 48.h,
                    //   minWidth: 48.w,
                    // ),
                    style: ButtonStyle(
                      // this is to revmoe the default maragin of buttons
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(Size(30, 30)),
                    // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {},
                    icon: Icon(Icons.filter_list_alt, size: 25.w),
                  ),
                ],
              ),
              Divider(thickness: 1),

              SizedBox(
                height: 0.1.sh,
                width: 1.0.sw,
                child: PageView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  controller: PageController(viewportFraction: 0.85),
                  pageSnapping: true,
                  padEnds: false,
                  itemBuilder: (ctx, i) {
                    return SizedBox(
                      height: 0.08.sh,
                      width: 0.8.sw,
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 3.w,
                            horizontal: 12.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expense Type",
                                    style: AppTextStyles.bodyLarge(),
                                  ),
                                  Text(
                                    "Expense Note",
                                    style: AppTextStyles.bodyMedium(),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Generator",
                                    style: AppTextStyles.bodyLarge(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "1000 Rs",
                                    style: AppTextStyles.bodyMedium(
                                      color: AppColors.mainTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(
                width: 1.0.sw,
                height: 0.48.sh,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, i) {
                    return EachTileWidget();
                  },
                ),
              ),
              SizedBox(height: 5.w),
              // monthly Card from HOMEpage
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MonthlyCard(title: "Monthly Income", amount: "1000 Rs"),
                  MonthlyCard(title: "Monthly Expenses", amount: "2000 Rs"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachTileWidget extends StatelessWidget {
  const EachTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (ctx) {
            return DisplayScreenBottomSheet();
          },
        );
      },
      child: SizedBox(
        width: 1.0.sw,
        height: 90.h,
        child: Card(
          color: AppColors.secondaryColor.withValues(alpha: 0.4),
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.w,
              bottom: 10.w,
              right: 10.w,
              left: 5.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                routineWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Paid",
                      style: AppTextStyles.bodyMedium(color: Colors.white),
                    ),
                    Text("10,000 Rs", style: AppTextStyles.bodyLarge()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget routineWidget() {
  return Row(
    children: [
      CircleAvatar(
        radius: 38.r,
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),

          child: Text(
            "25KV-1",
            style: AppTextStyles.bodySmall(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      SizedBox(width: 5.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Monday, 28", style: AppTextStyles.bodyLarge()),
          Text("Abrar Butt", style: AppTextStyles.bodyMedium()),
        ],
      ),
    ],
  );
}

class switchWidget extends StatelessWidget {
  const switchWidget({
    super.key,
    required this.customGradient,
    required this.topLeft,
    required this.topright,
    required this.bottomLeft,
    required this.bottomRight,
    required this.currentIndex,
    required this.index,
    required this.txt,
  });
  final double topLeft;
  final double topright;
  final double bottomLeft;
  final double bottomRight;
  final Gradient customGradient;
  final int currentIndex;
  final int index;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: index != currentIndex ? Colors.white : null,
        gradient: index == currentIndex ? customGradient : null,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft.w),
          bottomLeft: Radius.circular(bottomLeft.w),
          topRight: Radius.circular(topright.w),
          bottomRight: Radius.circular(bottomRight.w),
        ),
      ),
      width: 0.24.sw,
      height: 60.w,
      child: Text(
        txt,
        style: AppTextStyles.bodyMedium(
          color:
              index == currentIndex
                  ? Colors.white
                  : AppColors.secondaryTextColor,
        ),
      ),
    );
  }
}
