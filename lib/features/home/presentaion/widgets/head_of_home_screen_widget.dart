import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';

class HeadOfHomeScreenWidget extends StatelessWidget {
  const HeadOfHomeScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      color: AppColors.darkColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.location,
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 12.sp,
                ),
              ),
              Row(
                spacing: 4.w,
                children: [
                  Text(
                    "Bilzen, Tanjungbali",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset(
                    AppAssets.arrowDown,
                    height: 4.96,
                    width: 9.04,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
