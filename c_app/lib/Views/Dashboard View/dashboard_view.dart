import 'package:c_app/Views/Details%20View/details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Constants/app_colors.dart';
import '../../Constants/app_images.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List<String> images = [
    'assets/images/oatmealSprayPng.png',
    'assets/images/catCarrier.png',
    'assets/images/earDrops.png',
    'assets/images/vipesSpray.png'
  ];

  List<String> imagesArray = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image3.png'
  ];

  List<String> title = [
    'Pet Oatmeal Spray',
    'Fleece Cat Carrier ',
    'Veterinary Ear Drops',
    'Pet Vipes Spray'
  ];
  List<String> decc = [
    'this is my product very vets best jajh amjshds mjdjhs  m,ksdjfsnslns  mdfjksdb  djkhdjsfjkls msdjksdfhk',
    'Fleece Cat Carrier jksj ksd khksd mjksjios mhn sdbkhioc cnksih  njss  njls m ksjlsd   lsn sjhd sclsldn mdkn slk',
    'Veterinary Ear Drops jksdhhsf sdhsdnsdn  nn ns  sm cpo dm s sinsnnkksd,jposn sijdwsls;jsllssjcskldklxjkls',
    'Pet Vipes Spray isjsa jisjs  iojsid j jisdisj   jiwejdsxjl  ijwsid j uweiodj  wsujso ujs uwsiof wiuiosdj  wepij  weuwe wej wejiwj weuj'
  ];
  List<String> price = ['\$233.4', '\$293.4', '\$93.4', '\$233.4'];
  List<String> rating = ["3.4","4.4","4","2.4",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.logo),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SizedBox(
            height: 15.h,
            width: 15.w,
            child: SvgPicture.asset(AppImages.menu),
          ),
        ),
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Choose Brand',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff000000).withOpacity(0.66),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 65.h,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 65.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Image.asset(imagesArray[index]),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Choose Brand',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff000000).withOpacity(0.66),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: .7,
                            mainAxisSpacing: 10.h,
                          crossAxisSpacing: 10.w
                            ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() =>  DetailsView(
                                image: images[index],
                                desc: decc[index],
                                name: title[index],
                                price: price[index],
                                rating: rating[index],
                              ));
                            },
                            child: Container(
                              height: 230.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Container(
                                        height: 22.h,
                                        width: 22.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.redIcon),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: AppColors.whiteColor,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //SvgPicture.asset(AppImages.oatmealSpraySvg)
                                  SizedBox(
                                      height: 121.h,
                                      width: 118.w,
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.contain,
                                      )),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          title[index],
                                          style: TextStyle(
                                              color: const Color(0xff050505)
                                                  .withOpacity(0.66),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  price[index],
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: AppColors.yellowText),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: AppColors.star,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: AppColors.star,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: AppColors.star,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: AppColors.star,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: AppColors.star,
                                                      size: 15,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),

                                            SvgPicture.asset(AppImages.bucketSvg)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
