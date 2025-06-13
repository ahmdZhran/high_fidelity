// widgets/coffee_tab_page.dart
import 'package:flutter/material.dart';

class CoffeeTabScreen extends StatelessWidget {
  final String coffeeType;

  const CoffeeTabScreen({super.key, required this.coffeeType});

  @override
  Widget build(BuildContext context) {
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
