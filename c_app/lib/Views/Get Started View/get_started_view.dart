import 'package:c_app/Constants/app_colors.dart';
import 'package:c_app/Constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Components/custom_button.dart';
import '../Bottom Nav Bar/bottom_navigation_bar.dart';
import '../Dashboard View/dashboard_view.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.getStartedBg,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                ),
                Center(child: SvgPicture.asset(AppImages.mainLogo)),
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: SizedBox(
                    height: 135.h,
                    width: 277.w,
                    child: Text(
                      'Shop for your love today',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                CustomButton(
                  title: 'Get Started!!',
                  onTap: () {
                    Get.to(() => BottomNavigationBarView(currentIndex: 0, 
                    onTap: (int index) {  }, items: [],));
                  },
                ),
                SizedBox(
                  height: 110.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300.h,
            width: double.infinity,
            child: Image.asset(
              AppImages.doge,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
