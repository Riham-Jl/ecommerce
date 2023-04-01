import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/functions/fcmconfig.dart';
import 'package:project_ecommerce/core/services/services.dart';

import '../constant/apptheme.dart';

class LocaleController extends GetxController{
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;


  changeLang(String langcode) {
    Locale locale = Locale (langcode);
    myServices.sharedpreferences.setString("lang", langcode);
    Get.updateLocale(locale);
    myServices.sharedpreferences.getInt("step")==null? Get.toNamed(AppRoute.onboarding) : Get.offAllNamed(AppRoute.homescreen) ;
  }


@override
  void onInit() {
    requestPermissionNotification();
    fcmconfig();
    String? sharedpreflang = myServices.sharedpreferences.getString("lang");
    if (sharedpreflang=="ar"){
      language = const Locale("ar");
    }
    else if (sharedpreflang == "en"){
      language =const Locale ("en");
    }
    else {
      language = Locale (Get.deviceLocale!.languageCode);
    }
        super.onInit();

  }
}

