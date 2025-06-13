import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/custom_search_bar_widget.dart';

class HeadOfHomeScreenWidget extends HookWidget {
  const HeadOfHomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLocation = useState("Bilzen, Tanjungbali");

    final locations = [
      "Bilzen, Tanjungbali",
      "Cairo, Egypt",
      "Dubai, UAE",
      "Istanbul, Turkey",
      "Paris, France",
    ];

    return Container(
      height: 280.h,
      width: double.infinity,
      color: AppColors.darkColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                AppStrings.location,
                style: TextStyle(color: AppColors.greyColor, fontSize: 12.sp),
              ),
              InkWell(
                onTap: () async {
                  final chosen = await showMenu<String>(
                    context: context,
                    position: const RelativeRect.fromLTRB(100, 100, 0, 0),
                    items:
                        locations
                            .map(
                              (location) => PopupMenuItem<String>(
                                value: location,
                                child: Text(location),
                              ),
                            )
                            .toList(),
                  );
                  if (chosen != null) {
                    selectedLocation.value = chosen;
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedLocation.value,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    SizedBox(
                      height: 12.h,
                      width: 12.w,
                      child: SvgPicture.asset(
                        AppAssets.arrowDown,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              const CustomSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
