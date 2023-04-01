import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/view/screen/home.dart';
import 'package:project_ecommerce/view/screen/offers.dart';
import 'package:project_ecommerce/view/screen/settings.dart';

import '../view/screen/orders/archivedorders.dart';

abstract class HomeScreenController extends GetxController{
  changepage(int selectedpage);
  gotocart();

}

class HomeScreenControllerImp extends HomeScreenController{

  int currentpage=0;

  List<Widget> pages = const [
    HomePage(),
     OffersPage(),
    ArchivedOrders(),
    SettingsPage(),
  ];

  List bottomNavigationTitles = [
    {"title" : "home".tr , "icon" :Icons.home},
    {"title" :"offers".tr ,  "icon" :Icons.local_offer},
    {"title" :"archive".tr , "icon" :Icons.archive},
    {"title" :"settings".tr ,"icon" : Icons.settings},
  ];
  
  @override
  changepage( selectedpage) {
    currentpage=selectedpage;
    update();
  }
  
  @override
  gotocart() {
    Get.toNamed(AppRoute.cart);
  }
}