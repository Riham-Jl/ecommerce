import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/services/services.dart';
import 'package:project_ecommerce/data/datasource/static/static.dart';

import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onpagechanged( int val);
  skip();
}

class OnBoardingControllerImp extends OnBoardingController{
  MyServices myservices = Get.find();
  late PageController pagecontroller;

  int currentpage = 0;
  
  @override
  next() {
    if (currentpage< onboardinglist.length-1){
      currentpage++;
      pagecontroller.animateToPage(currentpage , duration: const Duration(milliseconds: 500) , curve: Curves.easeIn);
      update();
    }
    else {
     myservices.sharedpreferences.setInt("step", 1);
     Get.offAllNamed(AppRoute.login) ;     }
  }

  @override
  onpagechanged(int val) {
    currentpage=val;
    update();
  }

  @override
  skip() {
    myservices.sharedpreferences.setInt("step", 1);
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    pagecontroller = PageController();
        super.onInit();
  }

}