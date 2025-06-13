import 'package:flutter/material.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighFidelity extends StatelessWidget {
  const HighFidelity({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
