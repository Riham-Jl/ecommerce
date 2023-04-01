import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/checkemailcontroller.dart';
import '../../../core/class/handlingdataviewauth.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/buttonauth.dart';
import '../../widget/auth/costumtextauth.dart';
import '../../widget/auth/customtextformfield.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("check email".tr),
      ),
      body:GetBuilder<CheckEmailControllerImp>(builder: (controller) => 
      HandlingDataViewAuth(
        statusrequest: controller.statusrequest, 
        widget:SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
           children: [
             Customtextauth(
              title: "", 
              bodytext: "check email body".tr ),  
            Form(
              key: controller.formstate,
              child: Customtextformauth(
                  controller: controller.email ,
                   hinttext: "email field".tr,
                    labeltext: "email".tr,
                     icon: Icons.email_outlined,
                     isemail: true,
                     validator: (val){return validInput(val!, 10, 50, "email");}),
            ),
            const SizedBox(height: 20,),
            ButtonAuth( text: "check".tr, onPressed: (){controller.checkemail();},),
                        ],
          ),
        ),
      ),)
      )
    );
  }
}

