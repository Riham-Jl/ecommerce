import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/class/handlingdataviewauth.dart';
import '../../../controller/auth/signupcontroller.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/buttonauth.dart';
import '../../widget/auth/costumtextauth.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/gotosignuporin.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("sign up".tr),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) =>
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
                title: "welcome".tr, 
                bodytext: "sign up body".tr ),  
              Customtextformauth(
                  controller: controller.username ,
                   hinttext: "username field".tr,
                    labeltext: "username".tr,
                     icon: Icons.person,
                     validator: (val){return validInput(val!, 3, 15, "username");}
                     ),
              Customtextformauth(
                  controller: controller.email ,
                   hinttext: "email field".tr,
                    labeltext: "email".tr,
                     icon: Icons.email_outlined,
                     isemail: true,
                     validator: (val){return validInput(val!, 10, 50, "email");}),
              Customtextformauth(
                  controller: controller.phone ,
                   hinttext: "phone field".tr,
                    labeltext: "phone".tr,
                     icon: Icons.phone,
                     isphone: true,
                     validator: (val){return validInput(val!, 5, 20, "phone");}),
              Customtextformauth(
                  controller: controller.password ,
                   hinttext: "password field".tr,
                    labeltext: "password",
                     icon: Icons.security_outlined,
                     ispassword: controller.hidepassword,
                     onTapIcon:(){ controller.showhidepassword();},
                     validator: (val){return validInput(val!, 5, 15, "password");}),
              ButtonAuth(
                      text: "sign up".tr,
                      onPressed: (){
                      controller.signup();
                         },),
              GoToSignupOrIn(
                    textone: "have account".tr, 
                    texttwo: "sign in".tr , 
                    ontap:(){controller.gotologin();})
          
              ],
            ),
          ),
        ),
      ),))
      )
      
    );
  }
}

