import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homescreencontroller.dart';
import '../../core/functions/alertexitapp.dart';
import '../widget/homescreen/custombottomnavigation.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(builder: (controller) => 
    Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){controller.gotocart();},
        child: const Icon(Icons.shopping_basket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: const CustomBottomNavigation(),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: controller.pages.elementAt(controller.currentpage),)
    ));
  }
}



