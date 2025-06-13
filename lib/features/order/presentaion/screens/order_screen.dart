import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({
    super.key,
    this.name,
    this.subtitle,
    this.image,
    this.price,
  });
  final String? name;
  final String? subtitle;
  final String? image;
  final double? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.order), centerTitle: true),
    );
  }
}
