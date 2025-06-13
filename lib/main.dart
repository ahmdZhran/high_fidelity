import 'package:flutter/material.dart';
import 'package:high_fidelity/app/high_fidlity_app.dart';
import 'package:high_fidelity/core/router/app_router.dart';

void main() {
  runApp(HighFidelity(appRouter: AppRouter()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
