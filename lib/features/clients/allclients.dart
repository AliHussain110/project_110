import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

class AllClientsPage extends StatefulWidget {
  const AllClientsPage({super.key});

  @override
  State<AllClientsPage> createState() => _AllClientsPageState();
}

class _AllClientsPageState extends State<AllClientsPage> {
  final List<String> years = ["2023", "2024", "2025"];
  int selectedYearIndex = 2; // Default to 2025
  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.0.sw,
        height: 1.0.sh,
        child: Column(
          spacing: 20,
          children: [
            _buildHeader(),

            // _buildYearSelector(),
            // _buildViewToggle(),
            Expanded(child: _buildClientsList()),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 20.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Clients',
                style: AppTextStyles.displayLarge(color: Colors.white),
              ),
              SizedBox(height: 8.h),
              Text(
                '24 Total Clients',
                style: AppTextStyles.bodyLarge(
                  color: Colors.white.withValues(alpha: 0.8),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.white,
              size: 32.w,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClientsList() {
    return GridView.builder(
      key: ValueKey('grid'),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.85,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => _buildClientCard(),
    );
  }

  Widget _buildClientCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.push('/eachClientBill');
          },
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withValues(alpha: 0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'JD',
                          style: AppTextStyles.bodyLarge(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: AppTextStyles.bodyLarge(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          width: 0.2.sw, // Adjust the width as needed
                          alignment:
                              Alignment
                                  .centerRight, // Align to the right of the card
                          child: RichText(
                            text: TextSpan(
                              text: '1000 ',
                              style: AppTextStyles.bodyLarge(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Rs",
                                  style: AppTextStyles.bodyLarge(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // SizedBox(height: 4.h),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 16.h),
                Row(
                  spacing: 0,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Previous Bill',
                          style: AppTextStyles.bodySmall(color: Colors.grey),
                        ),
                        Container(
                          width: 75.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.accentColor.withValues(alpha: 0.4),
                            shape: BoxShape.rectangle,
                          ),
                          child: Center(
                            child: Text(
                              '200000',
                              style: AppTextStyles.bodyLarge(
                                color: AppColors.accentColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Bill',
                          style: AppTextStyles.bodyLarge(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 75.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.warningColor.withValues(
                              alpha: 0.4,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Center(
                            child: Text(
                              '21000',
                              style: AppTextStyles.bodyLarge(
                                color: AppColors.warningColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'john.doe@example.com',
                  style: AppTextStyles.bodyMedium(color: Colors.grey),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  // Widget _buildYearSelector() {
  //   return Container(
  //     height: 60.h,
  //     margin: EdgeInsets.symmetric(vertical: 16.h),
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: years.length,
  //       itemBuilder: (context, index) {
  //         bool isSelected = index == selectedYearIndex;
  //         return GestureDetector(
  //           onTap: () {
  //             setState(() {
  //               selectedYearIndex = index;
  //             });
  //           },
  //           child: Container(
  //             width: 100.w,
  //             margin: EdgeInsets.symmetric(horizontal: 8.w),
  //             decoration: BoxDecoration(
  //               color: isSelected ? AppColors.primaryColor : Colors.white,
  //               borderRadius: BorderRadius.circular(12.r),
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: Colors.black.withOpacity(0.05),
  //                   blurRadius: 10,
  //                   offset: Offset(0, 4),
  //                 ),
  //               ],
  //             ),
  //             child: Center(
  //               child: Text(
  //                 years[index],
  //                 style: AppTextStyles.bodyLarge(
  //                   color: isSelected ? Colors.white : Colors.grey,
  //                   fontWeight:
  //                       isSelected ? FontWeight.bold : FontWeight.normal,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _buildViewToggle() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 16.w),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         IconButton(
  //           onPressed: () {
  //             setState(() {
  //               isGridView = true;
  //             });
  //           },
  //           icon: Icon(
  //             Icons.grid_view,
  //             color: isGridView ? AppColors.primaryColor : Colors.grey,
  //           ),
  //         ),
  //         IconButton(
  //           onPressed: () {
  //             setState(() {
  //               isGridView = false;
  //             });
  //           },
  //           icon: Icon(
  //             Icons.view_list,
  //             color: !isGridView ? AppColors.primaryColor : Colors.grey,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
