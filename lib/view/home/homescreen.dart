import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/utils/colors.dart';
import 'package:uberapp/utils/textStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = [
    ['assets/categories/drink.png', 'içecek '],
    ['assets/categories/asian.png', 'asian'],
    ['assets/categories/burger.png', 'burger'],
    ['assets/categories/chinese.png', 'chinese'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        children: [
          SizedBox(height: 2.h),
          Text(
            'Mevcut konum',
            style: AppTextStyles.body16Bold,
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.sp,
                    ),
                    color: greyShade3,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'American',
                        style: AppTextStyles.small12Bold,
                      ),
                      Image(image: AssetImage('assets/categories/american.png'))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.sp,
                    ),
                    color: greyShade3,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'burger',
                        style: AppTextStyles.small12Bold,
                      ),
                      const Image(
                          image: AssetImage('assets/categories/burger.png'))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories
                  .map((e) => Column(
                        children: [
                          Container(
                            height: 22.w,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: greyShade3,
                              borderRadius: BorderRadius.circular(
                                5.sp,
                              ),
                            ),
                            child: Image(image: AssetImage(e[0])),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            e[1],
                            style: AppTextStyles.small12Bold,
                          )
                        ],
                      ))
                  .toList()),
          SizedBox(
            height: 2.h,
          ),
          Divider(
            thickness: 1.h,
            color: greyShade3,
          ),
          SizedBox(
            height: 2.h,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 18.h,
                  width: 94.w,
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: greyShade3),
                );
              })
        ],
      ),
    );
  }
}
