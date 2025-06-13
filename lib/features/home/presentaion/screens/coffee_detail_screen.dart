import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_detail_body_widget.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final String name;
  final String subtitle;
  final double price;
  final double rating;
  final String image;

  const CoffeeDetailScreen({
    super.key,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.detail),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 18.sp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(AppAssets.favoriteIcon),
            onPressed: () {},
          ),
        ],
      ),
      body: CoffeDetailBodyWidget(
        image: image,
        name: name,
        rating: rating,
        subtitle: subtitle,
        price: price,
      ),
    );
  }
}
