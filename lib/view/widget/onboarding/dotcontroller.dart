import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/onboardingcontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';

import '../../../data/datasource/static/static.dart';

class DotcontrollerOnboarding extends StatelessWidget {
  const DotcontrollerOnboarding({Key? key}) : super (key: key);
 
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ...List.generate(
        onboardinglist.length, 
        (index) => AnimatedContainer(
          duration: const Duration(microseconds: 500),
          margin: const EdgeInsets.all(5),
          width: controller.currentpage==index? 15 : 6,
          height: 6,
         decoration: BoxDecoration(
          color: AppColor.primaryColor,
           borderRadius: BorderRadius.circular(10)
           ),
          ))
    ],));
  }
}

