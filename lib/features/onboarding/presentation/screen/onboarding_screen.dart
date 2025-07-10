import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/helper/extensions.dart';
import 'package:high_fidelity/core/router/routes.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/core/widgets/custom_button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 500.h,
            child: Image.asset(AppAssets.onboarding, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 450.h),
                  Text(
                    AppStrings.onBoardingString,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    AppStrings.subTitleOnboardingString,
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  CustomButtonWidget(
                    height: 56.h,
                    width: double.infinity,
                    fontColor: AppColors.whiteColor,
                    onPressed: () {
                      context.pushNamed(Routes.homeScreen);
                    },
                    text: AppStrings.getStarted,
                    buttonTextStyle: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
