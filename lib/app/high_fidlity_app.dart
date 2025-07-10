import 'package:flutter/material.dart';
import 'package:high_fidelity/core/router/app_router.dart';
import 'package:high_fidelity/core/router/routes.dart';
import 'package:high_fidelity/core/theme/app_theme.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighFidelity extends StatelessWidget {
  const HighFidelity({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
