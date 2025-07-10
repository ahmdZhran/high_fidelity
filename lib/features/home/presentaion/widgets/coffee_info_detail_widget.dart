import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/core/widgets/custom_card_label_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/size_selection_widget.dart';
import 'package:readmore/readmore.dart';

class CoffeeInfoDetailwidget extends StatelessWidget {
  const CoffeeInfoDetailwidget({
    super.key,
    required this.name,
    required this.subtitle,
    required this.rating,
    required this.price,
  });

  final String name;
  final String subtitle;
  final double rating;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Text(
              subtitle,
              style: TextStyle(fontSize: 16.sp, color: Colors.grey[600]),
            ),
            Spacer(),
            CustomCardLabelWidget(icon: AppAssets.deliveryIcon),
            CustomCardLabelWidget(icon: AppAssets.coffeeBeansIcon),
            CustomCardLabelWidget(icon: AppAssets.milkIcon),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20.sp),

            SizedBox(width: 4.w),

            Text(
              rating.toString(),
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),

            SizedBox(width: 5.w),

            Baseline(
              baseline: 14.sp,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '(230)',
                style: TextStyle(fontSize: 14.sp, color: AppColors.greyColor),
              ),
            ),
          ],
        ),

        SizedBox(height: 5.h),
        Divider(color: AppColors.greyColor, endIndent: 15.w, indent: 15.w),
        SizedBox(height: 24.h),
        Text(
          AppStrings.description,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.h),
        ReadMoreText(
          'A delicious $name with ${subtitle.toLowerCase()}. Perfect for coffee lovers who enjoy a rich and flavorful experience. I know you will love it really much.',
          trimLines: 3,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
          moreStyle: TextStyle(
            fontSize: 14.sp,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
          lessStyle: TextStyle(
            fontSize: 14.sp,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          AppStrings.size,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        SizeSelectionWidget(),
      ],
    );
  }
}
