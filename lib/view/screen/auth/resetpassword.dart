import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/resetpasswordcontroller.dart';
import '../../../core/class/handlingdataviewauth.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/buttonauth.dart';
import '../../widget/auth/costumtextauth.dart';
import '../../widget/auth/customtextformfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("reset password".tr),
        
      ),
      body:GetBuilder<ResetPasswordControllerImp>(builder: (controller) => 
       HandlingDataViewAuth(
        statusrequest: controller.statusrequest, 
        widget: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Form(
            key: controller.formstate,
            child: Column(
             children: [
              Customtextauth(
                title: "reset password body".tr, 
                bodytext: "" ),  
              Customtextformauth(
                  controller: controller.password ,
                   hinttext: "password field".tr,
                    labeltext: "password".tr,
                     icon: Icons.security_outlined,
                     ispassword: controller.hidepassword,
                     onTapIcon:(){ controller.showhidepassword();},
                     validator: (val){return validInput(val!, 5, 15, "password");}),
              Customtextformauth(
                  controller: controller.repassword ,
                   hinttext: "repassword field".tr,
                    labeltext: "password".tr,
                     icon: Icons.security_outlined,
                     ispassword: controller.hidepassword,
                     onTapIcon:(){ controller.showhidepassword();},
                     validator: (val){return validInput(val!, 5, 15, "password");}),
              ButtonAuth(
                 text: "save".tr, 
                 onPressed: (){
                   controller.gotosuccess();
                    },),
             
              ],
            ),
          ),
        ),
      ),)
      )
    );
  }
}

