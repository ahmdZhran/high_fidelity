// widgets/home_header.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/banner_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/head_of_home_screen_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const HeadOfHomeScreenWidget(),
            SizedBox(height: 100.h),
          ],
        ),
        const BannerWidget(),
      ],
    );
  }
}

