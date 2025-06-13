import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';
import 'package:high_fidelity/features/home/presentaion/screens/coffee_detail_screen.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffe_card_widget.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  static const List<Map<String, dynamic>> coffeeData = [
    {
      'name': 'Caffe Mocha',
      'subtitle': 'Deep Foam',
      'price': 4.53,
      'rating': 4.8,
      'image': AppAssets.coffeMoca,
    },
    {
      'name': 'Flat White',
      'subtitle': 'Espresso',
      'price': 3.53,
      'rating': 4.8,
      'image': AppAssets.flatWhite,
    },
    {
      'name': 'Cappuccino',
      'subtitle': 'With Steamed Milk',
      'price': 4.53,
      'rating': 4.9,
      'image': AppAssets.flatWhite,
    },
    {
      'name': 'Americano',
      'subtitle': 'With Foam',
      'price': 3.53,
      'rating': 4.7,
      'image': AppAssets.coffeMoca,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.75,
      ),
      itemCount: coffeeData.length,
      itemBuilder: (context, index) {
        final coffee = coffeeData[index];
        return CoffeeCard(
          name: coffee['name'],
          subtitle: coffee['subtitle'],
          price: coffee['price'],
          rating: coffee['rating'],
          image: coffee['image'],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => CoffeeDetailScreen(
                      name: coffee['name'],
                      subtitle: coffee['subtitle'],
                      price: coffee['price'],
                      rating: coffee['rating'],
                      image: coffee['image'],
                    ),
              ),
            );
          },
        );
      },
    );
  }
}
