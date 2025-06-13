import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardLabelWidget extends StatelessWidget {
  const CustomCardLabelWidget({super.key, this.icon, this.widget});
  final String? icon;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 44.h,
      child: widget ?? Card(elevation: 3, child: Image.asset(icon!)),
    );
  }
}
