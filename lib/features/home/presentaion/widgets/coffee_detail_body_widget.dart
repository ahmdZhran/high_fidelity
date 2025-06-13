import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/core/widgets/custom_button_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_info_detail_widget.dart';

class CoffeDetailBodyWidget extends StatelessWidget {
  const CoffeDetailBodyWidget({
    super.key,
    required this.image,
    required this.name,
    required this.rating,
    required this.subtitle,
    required this.price,
  });

  final String image;
  final String name;
  final double rating;
  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          spacing: 16.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 202.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[200],
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.coffee,
                        size: 60.sp,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
            CoffeeInfoDetailwidget(
              name: name,
              subtitle: subtitle,
              rating: rating,
              price: price,
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.price,
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),

                CustomButtonWidget(
                  height: 50.h,
                  width: 217.w,
                  borderRadius: 16.r,
                  onPressed: () {},
                  text: AppStrings.buyNow,
                  buttonTextStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
