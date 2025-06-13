import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/core/utils/app_strings.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_tap_bar_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/coffee_tap_content_widget.dart';
import 'package:high_fidelity/features/home/presentaion/widgets/home_head_widget.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  static const List<String> coffeeTypes = [
    AppStrings.allCoffe,
    AppStrings.machiato,
    AppStrings.latte,
    AppStrings.cappuccino,
    AppStrings.espresso,
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: coffeeTypes.length);
    final selectedIndex = useState(0);

    useEffect(() {
      void listener() {
        selectedIndex.value = tabController.index;
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          CoffeeTabBar(
            tabController: tabController,
            selectedIndex: selectedIndex.value,
            coffeeTypes: coffeeTypes,
          ),
          SizedBox(height: 16.h),
          CoffeeTabContent(
            tabController: tabController,
            coffeeTypes: coffeeTypes,
          ),
        ],
      ),
    );
  }
}
