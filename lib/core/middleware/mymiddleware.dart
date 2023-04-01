import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int get priority => 1;

  MyServices myservices = Get.find();

  @override
  RouteSettings? redirect (String? route) {
     if (myservices.sharedpreferences.getInt("step")==2){
      return const RouteSettings(name: AppRoute.homescreen);
    }
    if (myservices.sharedpreferences.getInt("step")==1){
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}