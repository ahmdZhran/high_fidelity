// widgets/coffee_tab_page.dart
import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/all_coffee_tap_content_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/cappuccino_content_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/espresso_content_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/latte_content_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/macciat_content_widget.dart';

class CoffeeTapScreenWidget extends StatelessWidget {
  final String coffeeType;

  const CoffeeTapScreenWidget({super.key, required this.coffeeType});

  @override
  Widget build(BuildContext context) {
    switch (coffeeType) {
      case "All Coffee":
        return const AllCoffeeContent();
      case "Machiato":
        return const MacchiatoContent();
      case "Latte":
        return const LatteContent();
      case "Cappuccino":
        return const CappuccinoContent();
      case "Espresso":
        return const EspressoContent();
      default:
        return _buildDefaultContent();
    }
  }

  Widget _buildDefaultContent() {
    return Center(
      child: Text(
        coffeeType,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
