import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';

class DeliveryMethodSelector extends StatelessWidget {
  final String selectedMethod;
  final Function(String) onChanged;

  const DeliveryMethodSelector({
    super.key,
    required this.selectedMethod,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.h,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          _buildOption(AppStrings.delever, 'deliver'),
          SizedBox(width: 8.w),
          _buildOption('Pick Up', 'pickup'),
        ],
      ),
    );
  }

  Widget _buildOption(String text, String value) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onChanged(value),
        child: Container(
          decoration: BoxDecoration(
            color:
                selectedMethod == value
                    ? AppColors.primaryColor
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color:
                  selectedMethod == value
                      ? AppColors.whiteColor
                      : AppColors.darkColor,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
