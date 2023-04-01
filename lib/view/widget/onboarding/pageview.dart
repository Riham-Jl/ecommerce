import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/onboardingcontroller.dart';
import '../../../data/datasource/static/static.dart';

class PageviewOnboarding extends GetView<OnBoardingControllerImp> {
    const PageviewOnboarding({Key? key}) : super (key: key);

 
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pagecontroller,
      onPageChanged: (value) {
        controller.onpagechanged(value);
      },
      itemCount: onboardinglist.length,
      itemBuilder: (context, i) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(onboardinglist[i].title! , style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 40,),
            Image.asset(onboardinglist[i].image! , height: 200, fit: BoxFit.fill,),
            const SizedBox(height: 40,),
            Text(onboardinglist[i].body! , style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
          ],
        );
        
      },);
  }
}