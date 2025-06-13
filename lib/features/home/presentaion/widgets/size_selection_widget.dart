import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart'; // تأكد تضيف الملف اللي فيه اللون الأساسي

class SizeSelectionWidget extends HookWidget {
  const SizeSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedSize = useState<String?>(null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              ['S', 'M', 'L'].map((size) {
                final isSelected = selectedSize.value == size;
                return GestureDetector(
                  onTap: () {
                    selectedSize.value = size;
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(
                        color:
                            isSelected
                                ? AppColors.primaryColor
                                : AppColors.lightGrey,
                        width: 2,
                      ),
                    ),
                    color:
                        isSelected
                            ? AppColors.secondaryColor
                            : AppColors.whiteColor,
                    child: SizedBox(
                      width: 96.w,
                      height: 40.h,
                      child: Center(
                        child: Text(
                          size,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
