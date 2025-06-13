import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_grid_widget.dart';

class AllCoffeeContent extends StatelessWidget {
  const AllCoffeeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const Expanded(child: CoffeeGrid())],
      ),
    );
  }
}
