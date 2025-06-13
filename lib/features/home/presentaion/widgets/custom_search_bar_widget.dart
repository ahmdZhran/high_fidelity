import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 50.h,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.searchIcon,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 12.w),
                Text(
                  AppStrings.searchCoffee,
                  style: TextStyle(color: AppColors.greyColor, fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppAssets.filterIcoin,
              height: 20.h,
              width: 20.w,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}
