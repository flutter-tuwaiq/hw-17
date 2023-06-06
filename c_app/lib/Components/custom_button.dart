
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24.sp, color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
