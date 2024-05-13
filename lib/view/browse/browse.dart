import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/utils/colors.dart';
import 'package:uberapp/utils/textStyles.dart';

class BrowswScreen extends StatefulWidget {
  const BrowswScreen({super.key});

  @override
  State<BrowswScreen> createState() => _BrowswScreenState();
}

class _BrowswScreenState extends State<BrowswScreen> {
  List categories = [
    ['assets/categories/drink.png', 'içecek '],
    ['assets/categories/american.png', 'american'],
    ['assets/categories/asian.png', 'asian'],
    ['assets/categories/burger.png', 'burger'],
    ['assets/categories/carrebian.png', 'carrebian'],
    ['assets/categories/chinese.png', 'chinese'],
    ['assets/categories/convenience.png', 'convenience'],
    ['assets/categories/dessert.png', 'dessert'],
    ['assets/categories/fastFood.png', 'fastFood'],
    ['assets/categories/flower.png', 'Çiçek'],
    ['assets/categories/french.png', 'french'],
    ['assets/categories/halal.png', 'halal'],
    ['assets/categories/icecream.png', 'icecream'],
    ['assets/categories/indian.png', 'indian'],
    ['assets/categories/petSupplies.png', 'petSupplies'],
    ['assets/categories/retails.png', 'retails'],
    ['assets/categories/ride.png', 'ride'],
    ['assets/categories/takeout.png', 'takeout'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        children: [
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Tüm Kategoriler',
            style: AppTextStyles.body16,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3.h,
          ),
          GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: greyShade3,
                        ),
                        child: Image(
                          image: AssetImage(
                            categories[index][0],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      categories[index][1],
                      style: AppTextStyles.small10Bold,
                    )
                  ],
                );
              })
        ],
      )),
    );
  }
}
