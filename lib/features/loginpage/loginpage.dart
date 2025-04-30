import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:project_110/common/search_widget.dart';
import 'package:project_110/theme/colors.dart';
import 'package:project_110/theme/text_theme_style.dart';

import '../../common/botton_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.0.sh,
      width: 1.0.sw,
      child: Stack(
        children: [
          Container(
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
            ),

            width: 1.0.sw,
            height: 0.45.sh,
            child: Column(
              children: [
                SizedBox(height: 0.1.sh),
                Text(
                  "Sign in to Your\nAccount",
                  style: AppTextStyles.displayLarge(
                    color: AppColors.backgroundColor,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 10.h),
                Text(
                  "Enter your given credentials to login",
                  style: AppTextStyles.bodyMedium(
                    color: AppColors.backgroundColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          Positioned(
            top: 0.26.sh,
            left: 0.1.sw,
            right: 0.1.sw,
            child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(12.w),
              ),
              width: 0.8.sw,
              height: 0.55.sh,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonWidget(
                      width: 1.0,
                      onTap: () {},
                      title: "Signin With Google",
                      textColor: AppColors.mainTextColor,
                      bgroundColor: AppColors.backgroundColor,
                      borderColor: AppColors.inputFeildColor,
                      circularRadius: 8,
                      textStyle: AppTextStyles.labelLarge(
                        color: AppColors.mainTextColor,
                      ),
                    ),

                    // SizedBox(height: 15.h),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.inputFeildColor,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Text("Or", style: AppTextStyles.bodyMedium()),
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.inputFeildColor,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 15.h),
                    SizedBox(height: 10.h),
                    Text('Email', style: AppTextStyles.bodyLarge()),
                    SearchWidget(
                      controller: _emailController,
                      hintText: 'Enter your email',
                      keyboardType: TextInputType.emailAddress,
                      onChangeFunction: (_) {},
                      validation: (_) {
                        return null;
                      },
                    ),
                    SizedBox(height: 10.h),
                    Text('Password', style: AppTextStyles.bodyLarge()),
                    SearchWidget(
                      controller: _passwordController,
                      hintText: 'Enter your Password',
                      keyboardType: TextInputType.emailAddress,
                      onChangeFunction: (_) {},
                      password: true,
                      validation: (_) {
                        return null;
                      },
                    ),
                    Container(
                      width: 1.0.sw,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(8.w),
                      child: Text(
                        "Forgot Password?",
                        style: AppTextStyles.labelMedium(),
                      ),
                    ),
                    ButtonWidget(
                      width: 1.0.sw,
                      onTap: () {},
                      title: 'Login',
                      circularRadius: 8,
                      textStyle: AppTextStyles.bodyLarge(
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
