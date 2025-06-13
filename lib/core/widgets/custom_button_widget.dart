import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    this.color,
    required this.onPressed,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.side,
    this.fontColor,
    this.buttonTextStyle,
    this.borderRadius,
  });

  final Color? color;
  final VoidCallback onPressed;
  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final BorderSide? side;
  final Color? fontColor;
  final TextStyle? buttonTextStyle;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: side,
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: buttonTextStyle),
      ),
    );
  }
}
