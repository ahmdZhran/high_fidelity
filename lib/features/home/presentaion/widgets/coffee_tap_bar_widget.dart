// widgets/coffee_tab_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_tap_item_widget.dart';

class CoffeeTabBar extends StatelessWidget {
  final TabController tabController;
  final int selectedIndex;
  final List<String> coffeeTypes;

  const CoffeeTabBar({
    super.key,
    required this.tabController,
    required this.selectedIndex,
    required this.coffeeTypes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            coffeeTypes.length,
            (index) => CoffeeTabItem(
              index: index,
              title: coffeeTypes[index],
              isSelected: selectedIndex == index,
              onTap: () => tabController.animateTo(index),
            ),
          ),
        ),
      ),
    );
  }
}

