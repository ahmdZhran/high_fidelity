// widgets/coffee_tab_content.dart
import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_tap_screen.dart'
    show CoffeeTabScreen;

class CoffeeTabContent extends StatelessWidget {
  final TabController tabController;
  final List<String> coffeeTypes;

  const CoffeeTabContent({
    super.key,
    required this.tabController,
    required this.coffeeTypes,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children:
            coffeeTypes
                .map((coffeeType) => CoffeeTabScreen(coffeeType: coffeeType))
                .toList(),
      ),
    );
  }
}
