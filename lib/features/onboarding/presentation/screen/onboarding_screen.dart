import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            height: 500.h, // Set specific height
            child: Image.asset(AppAssets.onboarding, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  AppStrings.onBoardingString,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: CustomButtonWidget(
                    height: 56,
                    width: double.infinity,
                    fontColor: AppColors.whiteColor,
                    onPressed: () {},
                    text: AppStrings.getStarted,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
