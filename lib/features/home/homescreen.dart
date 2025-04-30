import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/features/home/widgets/balance_card.dart';
import 'package:project_110/features/home/widgets/daily_routine_card.dart';
import 'package:project_110/features/home/widgets/expense_card.dart';
import 'package:project_110/features/home/widgets/monthly_card.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';
import 'package:project_110/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.pageKpadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text("Sat, 26", style: AppTextStyles.bodyMedium(fontSize: 16)),
            Text(
              "Ali Husssain",
              style: AppTextStyles.bodyLarge(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.h),
            const BalanceCard(balance: "200,0000 Rs"),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MonthlyCard(title: "Monthly Income", amount: "1000 Rs"),
                MonthlyCard(title: "Monthly Expenses", amount: "4800 Rs"),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Expenses',
              style: AppTextStyles.displayMedium(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 1.0.sw,
              height: 0.1.sh,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: const ExpenseCard(
                      expenseName: "Expense Name",
                      explanation: "Explanation",
                      amount: "1000 Rs",
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Daily Routine',
              style: AppTextStyles.displayMedium(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: const DailyRoutineCard(
                    name: "Abrar Butt",
                    location: "Location",
                    amount: "6000 Rs",
                    paymentType: "cash",
                    vehicleNumber: "LRJ 1404",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
