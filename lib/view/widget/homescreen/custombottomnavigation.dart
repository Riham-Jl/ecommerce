import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homescreencontroller.dart';
import '../../../core/constant/color.dart';
import 'bottomnavigationbuttns.dart';
class CustomBottomNavigation extends GetView<HomeScreenControllerImp> {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) => 
     BottomAppBar(
      color: AppColor.primaryColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        children: [
         ...List.generate(controller.bottomNavigationTitles.length+1, (index) { 
          int i = index<3 ? index : index-1;
        return ( index==2? const Spacer():
          BottomNavigationButtons(
            ontap: () {controller.changepage(i);},
            icondata: controller.bottomNavigationTitles[i]['icon'],
            title: controller.bottomNavigationTitles[i]['title'],
            selected: controller.currentpage==i? true : false,
          )) ;
            })

      ],)
    ));
  }
}