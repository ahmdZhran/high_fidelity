import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10.h,
                left: 20.w,
                child: Chip(
                  side: BorderSide.none,
                  label: Text(
                    AppStrings.promo,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
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
    );
  }
}
