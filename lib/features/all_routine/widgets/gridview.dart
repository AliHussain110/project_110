import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../monthscard.dart';
import 'yearlycardroutine.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({
    this.isYear = true,
    required this.dataList,
    super.key,
  });
  final List<String> dataList;
  final bool isYear;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: dataList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // Each item up to 150px wide
          mainAxisSpacing: 10.w,
          crossAxisSpacing: 10.w,
          childAspectRatio: 1.1.w, // Square items
        ),
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () {
              if (isYear) {
                showBottomSheet(
                  context: context,
                  builder: (ctx) {
                    return MonthCardBottomSheet();
                  },
                );
              } else {
                context.push("/monthEachDayScreen");
              }
            },
            child: YearlyCardRoutine(data: dataList[i], isYear: isYear),
          );
        },
      ),
    );
  }
}
