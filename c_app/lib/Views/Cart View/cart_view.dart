import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants/app_colors.dart';
import '../../Constants/app_images.dart';
import '../../Models/cart_model.dart';

class CartView extends StatefulWidget {
  const CartView({
    Key? key,
  }) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  bool isProductSelected = true;
  bool isDetailsSelected = false;
  bool isReviewsSelected = false;

  List<String> price = ['\$233.4', '\$293.4', '\$93.4', '\$233.4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.logo),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 800.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff6c9536e).withOpacity(0.43),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Expanded(
                    child: cartItems.length != 0
                        ? ListView.builder(
                            itemCount: cartItems.length,
                            itemBuilder: (BuildContext context, int index) {
                              final item = cartItems[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 8.h),
                                child: Container(
                                  height: 140.h,
                                  width: 360.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(item.image),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 25.h),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item.name,
                                                //'Pet Oatmeal Spray',
                                                style: TextStyle(
                                                    color:
                                                        const Color(0xff050505)
                                                            .withOpacity(0.76),
                                                    fontSize: 16.sp),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        item.price,
                                                        //'\$233.4',
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: AppColors
                                                                .yellowText),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                AppColors.star,
                                                            size: 15,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                AppColors.star,
                                                            size: 15,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                AppColors.star,
                                                            size: 15,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                AppColors.star,
                                                            size: 15,
                                                          ),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                AppColors.star,
                                                            size: 15,
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 15.w,
                                                  ),
                                                  SvgPicture.asset(
                                                      AppImages.bucketSvg)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            cartItems.removeAt(index);
                                            setState(() {});
                                          },
                                          child: SvgPicture.asset(
                                            AppImages.delete,
                                            width: 20.w,
                                            height: 30.h,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : const Center(
                            child: Text("Item not available in the cart"),
                          ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
