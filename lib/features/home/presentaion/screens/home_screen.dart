import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/head_of_home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(children: [HeadOfHomeScreenWidget()]),

          Positioned(
            top: 210.h,
            left: 0,
            right: 0,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.bannerHomeScreen,
                      width: 327.w,
                      height: 140.h,
                      fit:
                          BoxFit
                              .cover, // تغيير إلى BoxFit.cover لتغطية المساحة بالكامل
                    ),
                    Positioned(
                      top: 10.h,
                      left: 20.w,
                      child: Chip(
                        side: BorderSide.none,
                        label: Text(
                          "Promo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.h,
                      left: 20.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SvgPicture.asset(AppAssets.textBanner)],
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
