import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/onboardingcontroller.dart';

class ButtonsOnboarding extends GetView<OnBoardingControllerImp> {
  const ButtonsOnboarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: ElevatedButton(
            onPressed: (){
              controller.next();
            },
            child:  Text("continue".tr)),
        ),
        InkWell(
          onTap: (){
            controller.skip();
          },
          child:  Text("skip".tr),)
      ],
    );
  }
}
