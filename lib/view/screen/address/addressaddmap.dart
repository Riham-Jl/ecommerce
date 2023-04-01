import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/address/addressaddcontroller.dart';
import '../../widget/custombutton.dart';

class AddressAddMap extends StatelessWidget {
  const AddressAddMap({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(AddressAddControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("map".tr),
      ),
      body: GetBuilder<AddressAddControllerImp>(builder: (controller) =>
       Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            margin: const EdgeInsets.only(bottom: 25),
              alignment: Alignment.center,
              child:
              controller.lat!=null
               ? Text("Lat = ${controller.lat} \n Long = ${controller.long}" , style: const TextStyle(fontSize: 20 , height: 1.5),)
               :const Center(child: CircularProgressIndicator(),),),
            CustomButton(
              text: "add address details".tr,
              onPressed: (){
               controller.gotodetails();
              }
            )
          ])
         ),
    );
  }
}

