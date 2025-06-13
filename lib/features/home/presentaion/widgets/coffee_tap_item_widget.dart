import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';

class CoffeeTabItem extends StatelessWidget {
  final int index;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const CoffeeTabItem({
    super.key,
    required this.index,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 6.h,
          ),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : AppColors.darkColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

