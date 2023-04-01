import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/onboardingcontroller.dart';
import '../widget/onboarding/buttons.dart';
import '../widget/onboarding/dotcontroller.dart';
import '../widget/onboarding/pageview.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             const Expanded(
              flex: 2,
              child: PageviewOnboarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  DotcontrollerOnboarding(),
                   ButtonsOnboarding(),
                ],))
          ],
        ),
      )
    );
  }
}


