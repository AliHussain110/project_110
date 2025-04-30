import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/theme/colors.dart';

import '../theme/text_theme_style.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width = 0.8,
    required this.keyboardType,
    this.value = false,
    this.password = false,
    this.autoFocus = false,
    required this.onChangeFunction,
    required this.validation,
    this.prefixIcon,
    this.suffixIcon,
    this.radius = 8,
    this.foucsnode,
  });

  final TextEditingController controller;
  final String hintText;
  final double width;
  final TextInputType keyboardType;
  final bool value;
  final bool password;
  final void Function(String)? onChangeFunction;
  final String? Function(String?) validation;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double radius;
  final FocusNode? foucsnode;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      width: width.sw,
      child: TextFormField(
        autofocus: autoFocus,
        obscureText: password,
        cursorColor: Colors.black,
        controller: controller,
        keyboardType: keyboardType,
        focusNode: foucsnode,
        validator: validation,
        inputFormatters: [
          if (value)
            LengthLimitingTextInputFormatter(11), // Limit to 14 characters
        ],
        onFieldSubmitted: onChangeFunction,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.backgroundColor,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16.sp,
            color: AppColors.inputFeildColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius).w,
            borderSide: BorderSide(color: AppColors.inputFeildColor),
            // borderSide: const BorderSide(
            //   color: Colors.black,
            // ),
          ),
          border: OutlineInputBorder(
            // borderSide: BorderSide(color: AppColors.black),
            borderRadius: BorderRadius.circular(radius).w,
            borderSide: BorderSide(color: AppColors.inputFeildColor),
          ),
        ),
        style: AppTextStyles.labelLarge(color: AppColors.mainTextColor),
      ),
    );
  }
}
