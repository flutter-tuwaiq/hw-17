import 'package:c_app/Models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Constants/app_colors.dart';
import '../../Constants/app_images.dart';

class DetailsView extends StatefulWidget {
  String name, desc, price, image, rating;
  DetailsView(
      {required this.name,
      required this.image,
      required this.price,
      required this.desc,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool alreadyAdded = false;
  bool isProductSelected = true;
  bool isDetailsSelected = false;
  bool isReviewsSelected = false;
  //alreadyAdded = true;
  List<String> price = ['\$233.4', '\$293.4', '\$93.4', '\$233.4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.logo),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SvgPicture.asset(AppImages.search),
          )
        ],
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
              height: 838.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff6c9536e).withOpacity(0.43),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 60.w,
                      ),
                      Center(
                        child: SizedBox(
                            height: 275.h,
                            width: 300.w,
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.contain,
                            )),
                      ),
                      Container(
                        height: 35.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.whiteColor),
                        child: const Center(
                            child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        )),
                      )
                    ],
                  ),
                  Container(
                    height: 533.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: Container(
                              height: 50.h,
                              width: 400.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff6C9536e)
                                      .withOpacity(0.43),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isProductSelected = true;
                                        isDetailsSelected = false;
                                        isReviewsSelected = false;
                                      });
                                    },
                                    child: Container(
                                      height: 55.h,
                                      width: 125.w,
                                      decoration: BoxDecoration(
                                          color: isProductSelected
                                              ? const Color(0xffF6C953)
                                                  .withOpacity(0.43)
                                              : const Color(0xff6C9536E)
                                                  .withOpacity(0.43),
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20))),
                                      child: Center(
                                          child: Text(
                                        'Product',
                                        style: TextStyle(
                                            color: const Color(0xff0A0909A8)
                                                .withOpacity(0.66),
                                            fontSize: 18.sp),
                                      )),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isProductSelected = false;
                                        isDetailsSelected = true;
                                        isReviewsSelected = false;
                                      });
                                    },
                                    child: Container(
                                      height: 55.h,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                        color: isDetailsSelected
                                            ? const Color(0xffF6C953)
                                                .withOpacity(0.43)
                                            : const Color(0xff6C9536E)
                                                .withOpacity(0.43),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Details',
                                        style: TextStyle(
                                            color: const Color(0xff0A0909A8)
                                                .withOpacity(0.66),
                                            fontSize: 18.sp),
                                      )),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isProductSelected = false;
                                        isDetailsSelected = false;
                                        isReviewsSelected = true;
                                      });
                                    },
                                    child: Container(
                                      height: 55.h,
                                      width: 123.w,
                                      decoration: BoxDecoration(
                                          color: isReviewsSelected
                                              ? const Color(0xffF6C953)
                                                  .withOpacity(0.43)
                                              : const Color(0xff6C9536E)
                                                  .withOpacity(0.43),
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      child: Center(
                                          child: Text(
                                        'Reviews',
                                        style: TextStyle(
                                            color: const Color(0xff0A0909A8)
                                                .withOpacity(0.66),
                                            fontSize: 18.sp),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(
                                color:
                                    const Color(0xff050505).withOpacity(0.66),
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            '\$${widget.price}',
                            style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.yellowText),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Description:',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.66),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            widget.desc,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black.withOpacity(.76),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Ratings:',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.66),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.star,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.star,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.star,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.star,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.star,
                                size: 35,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                widget.rating,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.76),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (alreadyAdded != true) {
                                    final crt = CartModel(
                                        image: widget.image,
                                        id: '1',
                                        name: widget.name,
                                        price: widget.price);
                                    cartItems.add(crt);
                                    setState(() {});
                                    Get.snackbar("Successfully", "Item Added");
                                  } else {
                                    Get.snackbar("Error", "Already added");
                                  }
                                },
                                child: Container(
                                  height: 60.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff6C9536E)
                                          .withOpacity(0.43),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                      child: Text(
                                    alreadyAdded == true
                                        ? "Already add in Cart"
                                        : 'Add to Cart',
                                    style: TextStyle(
                                        color: const Color(0xff050505)
                                            .withOpacity(0.66),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp),
                                  )),
                                ),
                              ),
                              Container(
                                  height: 60.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.yellowButton,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                          color: const Color(0xff050505)
                                              .withOpacity(0.66),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
