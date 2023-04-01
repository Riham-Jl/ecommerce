import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/functions/validinput.dart';
import 'package:project_ecommerce/view/widget/auth/customtextformfield.dart';
import 'package:project_ecommerce/view/widget/custombutton.dart';

import '../../../controller/address/addressaddcontroller.dart';
import '../../../core/class/handlingdataviewauth.dart';

class AddressAddDetails extends StatelessWidget {
  const AddressAddDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("address details".tr),
      ),
      body:  GetBuilder<AddressAddControllerImp>(builder: (controller) =>
       HandlingDataViewAuth(
          statusrequest: controller.statusrequest,
      widget: Container(
        padding: const EdgeInsets.all(25),
        child: ListView(children: [
          Form(
            key: controller.formstate,
            child: Column(
          children: [
          Customtextformauth(
            controller: controller.name,
             hinttext: "address name".tr,
              labeltext: "address name".tr,
              validator: (val){return validInput(val!, 3, 100, "text");},
              ),
            Customtextformauth(
            controller: controller.city,
             hinttext: "address city".tr,
              labeltext: "address city".tr,
              validator: (val){return validInput(val!, 3, 100, "text");},
              ),
              Customtextformauth(
            controller: controller.street,
             hinttext: "address street".tr,
              labeltext: "address street".tr ,
              validator: (val){return validInput(val!, 3, 100, "text");},
              ),
              Customtextformauth(
            controller: controller.building,
             hinttext: "address building".tr,
              labeltext: "address building".tr,
              validator: (val){return validInput(val!, 3, 100, "text");},
              ),
              CustomButton(
                text: "save".tr,
                 onPressed: (){
                  controller.addAddress();
                },)
              
          ]))
        ],),
      )
      )),
    );
  }
}