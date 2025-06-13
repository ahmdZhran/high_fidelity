// import 'package:flutter/material.dart';
// import 'package:high_fidelity/core/utils/app_assets.dart';
// import 'package:high_fidelity/core/widgets/custom_button_widget.dart';
// import 'package:high_fidelity/features/onboarding/data/onboarding_model.dart';

// class OnboardingBody extends StatelessWidget {
//   const OnboardingBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController();

//     return Scaffold(
//       body: PageView.builder(
//         controller: controller,
//         itemCount: onBoardingData.length,
//         itemBuilder: (context, index) {
//           return Stack(
//             fit: StackFit.expand,
//             children: [
//               // Image.asset(AppAssets.onboarding),
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 55),
//                     child: Text(
//                       onBoardingData[index].subTitle,
//                       style: const TextStyle(color: Colors.amber),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   // if (index == onBoardingData.length - 1)
//                   //   Positioned(
//                   //     bottom: 50,
//                   //     left: 0,
//                   //     right: 0,
//                   //     child: Column(
//                   //       children: [
//                   //         const SizedBox(height: 320),
//                   //         // CustomButtonWidget(
//                   //         //   width: 400,
//                   //         //   height: 70,
//                   //         //   onPressed: () {
//                   //         //     Navigator.push(
//                   //         //       context,
//                   //         //       MaterialPageRoute(
//                   //         //         builder: (context) {
//                   //         //           return const SignUpView();
//                   //         //         },
//                   //         //       ),
//                   //         //     );
//                   //         //   },
//                   //         //   text: AppStrings.register,
//                   //         //   fontColor: AppColors.backgroundColor,
//                   //         // ),
//                   //         const SizedBox(height: 20),
//                   //       ],
//                   //     ),
//                   //   ),
//                 ],
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
