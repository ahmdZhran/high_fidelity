import 'package:flutter/material.dart';
import 'package:high_fidelity/core/router/routes.dart';
import 'package:high_fidelity/features/map/presentaion/screens/map_screen.dart';
import 'package:high_fidelity/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:high_fidelity/features/order/presentaion/screens/order_screen.dart';
import 'package:high_fidelity/main.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.mapScreen:
        return MaterialPageRoute(builder: (_) => const MapScreen());
      case Routes.orderScreen:
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      default:
        return null;
    }
  }
}
