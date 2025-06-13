import 'package:flutter/material.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/head_of_home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [HeadOfHomeScreenWidget()]));
  }
}
