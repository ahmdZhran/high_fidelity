import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    colorScheme: const ColorScheme.light(primary: Colors.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: 'Sora',
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black, fontFamily: 'Sora'),
    ),
    fontFamily: 'Pacifico',
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.whiteColor,
    ),
  );
}
